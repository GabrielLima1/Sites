class ShippingEmail < ApplicationRecord
  belongs_to :user
  has_many :be_clients
  has_many :contact_us
end
