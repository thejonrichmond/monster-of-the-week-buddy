class HuntersController < ApplicationController
  before_action :authenticate_user!

  def index
    @hunters = Hunter.all
  end

  def show
    @hunter = Hunter.find params[:id]
  end

  def new
    @hunter = Hunter.new
  end

  def create
    @hunter = Hunter.new hunter_params
    if @hunter.save
      redirect_to @hunter
    else
      render :new
    end
  end

  def edit
    @hunter = Hunter.find params[:id]
  end

  def update
    @hunter = Hunter.find params[:id]

    if @hunter.update(hunter_params)
      redirect_to @hunter
    else
      render :edit
    end
  end

  def destroy
    @hunter = Hunter.find(params[:id])
    @hunter.destroy

    redirect_to root_path
  end

  private

  def hunter_params
    params.require(:hunter).permit(:name, :description)
  end
end
