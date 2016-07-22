class Category < ActiveRecord::Base
	has_many :subcategories
	has_many :products, through: :subcategories
end
