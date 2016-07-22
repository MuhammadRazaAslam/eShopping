class Subcategory < ActiveRecord::Base
	belongs_to :categories
	has_many :products
end
