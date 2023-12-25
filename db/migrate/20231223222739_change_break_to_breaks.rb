class ChangeBreakToBreaks < ActiveRecord::Migration[7.0]
  def change
    rename_column :upper1s, :break, :break_t
    rename_column :upper2s, :break, :break_t
    rename_column :legs, :break, :break_t
    rename_column :shoulders, :break, :break_t
  end
end
