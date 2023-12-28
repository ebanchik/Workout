class FixRepsType < ActiveRecord::Migration[7.0]
  def change
    change_column :legs, :reps, :string
    change_column :shoulders, :reps, :string
    change_column :upper2s, :reps, :string

  end
end
