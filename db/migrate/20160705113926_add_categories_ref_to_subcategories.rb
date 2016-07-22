class AddCategoriesRefToSubcategories < ActiveRecord::Migration
  def change
    add_reference :subcategories, :categories, index: true, foreign_key: true
  end
end
