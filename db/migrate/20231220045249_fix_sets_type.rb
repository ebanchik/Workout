class FixSetsType < ActiveRecord::Migration[7.0]
  def change
    change_column :upper2s, :sets, :string
  end
end
