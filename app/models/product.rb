class Product < ActiveRecord::Base
  belongs_to :subcategories
  has_many :orders
end
