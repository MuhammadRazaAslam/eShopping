class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :store_name
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :province
      t.string :city
      t.string :phone_no
      t.text :address_1
      t.text :address_2
      t.string :logo

      t.timestamps null: false
    end
  end
end
