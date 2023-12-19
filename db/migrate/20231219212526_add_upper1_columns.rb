class AddUpper1Columns < ActiveRecord::Migration[7.0]
  def change
    add_column :upper1, :style, :string
    add_column :upper1, :day, :string
  end
end
