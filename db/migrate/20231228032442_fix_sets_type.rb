class FixSetsType < ActiveRecord::Migration[7.0]
  def change
    change_column :upper2s, :sets, "integer USING CAST(sets AS INTEGER)"
    change_column :legs, :sets, "integer USING CAST(sets AS INTEGER)"
    change_column :shoulders, :sets, "integer USING CAST(sets AS INTEGER)"
  end
end
