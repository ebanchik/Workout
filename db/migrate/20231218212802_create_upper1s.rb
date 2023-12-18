class CreateUpper1s < ActiveRecord::Migration[7.0]
  def change
    create_table :Upper1s do |t|
      t.string :name
      t.integer :sets
      t.string :reps
      t.string :break

      t.timestamps
    end
  end
end
