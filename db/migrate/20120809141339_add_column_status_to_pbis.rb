class AddColumnStatusToPbis < ActiveRecord::Migration
  def change
    add_column :pbis, :status, :string
  end
end
