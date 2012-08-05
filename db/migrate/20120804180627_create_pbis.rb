class CreatePbis < ActiveRecord::Migration
  def change
    create_table :pbis do |t|
      t.string :description, :limit => 300
      t.integer :story_points

      t.timestamps
    end
  end
end
