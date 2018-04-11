class Product < ApplicationRecord
  belongs_to :archive
  has_many :app_products
  has_many :ctrl_qualits
end
