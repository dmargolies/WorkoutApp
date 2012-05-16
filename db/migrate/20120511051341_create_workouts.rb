class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.decimal :rating
      t.references :type

      t.timestamps
    end
    add_index :workouts, :type_id
  end
end
