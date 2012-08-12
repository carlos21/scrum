class CreatePbiSprintAssignments < ActiveRecord::Migration
  def change
    create_table :pbi_sprint_assignments, :id => false do |t|
      t.integer :sprint_id, :null => false
      t.integer :pbi_id, :null => false

      t.timestamps
    end

    add_index(:pbi_sprint_assignments, [:sprint_id, :pbi_id], :unique => true)
  end
end
