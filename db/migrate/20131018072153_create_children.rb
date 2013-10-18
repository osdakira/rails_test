class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.belongs_to :parent, index: true

      t.timestamps
    end
  end
end
