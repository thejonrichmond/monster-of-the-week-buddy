class CreatePlaybook < ActiveRecord::Migration[6.1]
  def change
    create_table :playbooks do |t|
      t.string :name

      t.timestamps
    end

    add_reference :hunters, :playbook, null: false
  end
end
