class CreateColumnSamples < ActiveRecord::Migration
  def change
    create_table :column_samples do |t|
      t.integer :c1
      t.integer :c2
      t.integer :c3

      t.timestamps
    end
  end
end
