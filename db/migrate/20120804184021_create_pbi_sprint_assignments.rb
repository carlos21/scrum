class CreatePbiSprintAssignments < ActiveRecord::Migration
  def change
    create_table :pbi_sprint_assignments do |t|
      t.integer :sprint_id
      t.integer :pbi_id

      t.timestamps
    end
  end
end
