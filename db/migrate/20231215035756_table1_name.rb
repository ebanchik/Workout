class Table1Name < ActiveRecord::Migration[7.0]
  def change
    rename_table :upper_2_exercises, :exercises
  end
end
