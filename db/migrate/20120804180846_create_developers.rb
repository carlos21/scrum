class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name, :limit => 20

      t.timestamps
    end
  end
end
