class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :description, :limit => 100
      t.integer :developer_id
      t.integer :pbi_id

      t.timestamps
    end
  end
end
