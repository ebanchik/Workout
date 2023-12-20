class CreateShoulders < ActiveRecord::Migration[7.0]
  def change
    create_table :shoulders do |t|
      t.string :name
      t.string :sets
      t.integer :reps
      t.string :break
      t.string :style
      t.string :day

      t.timestamps
    end
  end
end
