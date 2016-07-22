class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.references :categories, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
