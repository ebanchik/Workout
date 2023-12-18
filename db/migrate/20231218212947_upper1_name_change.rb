class Upper1NameChange < ActiveRecord::Migration[7.0]
  def change
    rename_table :upper1s, :upper_1_exercises
  end
end
