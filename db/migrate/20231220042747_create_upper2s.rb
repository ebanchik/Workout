class CreateUpper2s < ActiveRecord::Migration[7.0]
  def change
    create_table :upper2s do |t|
      t.string :name
      t.integer :sets
      t.string :break
      t.string :style
      t.string :day

      t.timestamps
    end
  end
end
