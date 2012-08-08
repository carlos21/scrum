class AddSprintIdToPbis < ActiveRecord::Migration
  def change
    add_column :pbis, :sprint_id, :integer
  end
end
