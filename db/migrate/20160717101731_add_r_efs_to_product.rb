class AddREfsToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :buyers, index: true, foreign_key: true
  end
end
