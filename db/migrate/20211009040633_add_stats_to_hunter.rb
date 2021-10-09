class AddStatsToHunter < ActiveRecord::Migration[6.1]
  def change
    add_column :hunters, :charm, :int
    add_column :hunters, :cool, :int
    add_column :hunters, :sharp, :int
    add_column :hunters, :tough, :int
    add_column :hunters, :weird, :int
  end
end
