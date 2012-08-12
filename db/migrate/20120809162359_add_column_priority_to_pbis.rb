class AddColumnPriorityToPbis < ActiveRecord::Migration
  def change
    add_column :pbis, :priority, :integer
  end
end
