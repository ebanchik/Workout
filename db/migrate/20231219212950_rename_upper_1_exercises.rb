class RenameUpper1 < ActiveRecord::Migration[7.0]
  def change
    rename_table :Upper1, :upper1
  end
end
