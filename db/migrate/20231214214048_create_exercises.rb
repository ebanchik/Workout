class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.string :reps
      t.string :break

      t.timestamps
    end
  end
end
