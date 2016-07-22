class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :product_name
      t.integer :product_price
      t.integer :quantity
      t.string :item_condition
      t.string :pic_1
      t.string :pic_2
      t.string :pic_3
      t.string :pic_4
      t.string :demo_video
      t.references :subcategories, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
