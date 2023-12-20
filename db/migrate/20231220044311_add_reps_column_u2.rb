class AddRepsColumnU2 < ActiveRecord::Migration[7.0]
  def change
    add_column :upper2s, :reps, :integer
  end
end
