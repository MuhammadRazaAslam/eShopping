class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :products, index: true, foreign_key: true
      t.references :brands, index: true, foreign_key: true
      t.integer :quantity
      t.integer :total_amount
      t.string :status

      t.timestamps null: false
    end
  end
end
