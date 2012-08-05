class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :description, :limit => 300
      t.string :goal, :limit => 300

      t.timestamps
    end
  end
end
