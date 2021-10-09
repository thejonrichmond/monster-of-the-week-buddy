class AddRatingsToPlaybook < ActiveRecord::Migration[6.1]
  def change
    add_column :playbooks, :ratings, :jsonb
  end
end
