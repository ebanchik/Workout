class LastTableNameChange < ActiveRecord::Migration[7.0]
  def change
    rename_table :upper1, :upper1s
  end
end
