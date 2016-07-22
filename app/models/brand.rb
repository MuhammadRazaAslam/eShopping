class Brand < ActiveRecord::Base
  belongs_to :categories
  has_many :orders
end
