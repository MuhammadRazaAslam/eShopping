class CreateSliderSubcategoryDisplayPics < ActiveRecord::Migration
  def change
    create_table :slider_subcategory_display_pics do |t|
      t.string :pic
      t.string :page_name

      t.timestamps null: false
    end
  end
end
