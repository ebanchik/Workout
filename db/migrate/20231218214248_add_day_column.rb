class AddDayColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :day, :string
  end
end
