class AddHuntersToUser < ActiveRecord::Migration[6.1]
  def change
    Hunter.destroy_all
    add_reference :hunters, :user
  end
end
