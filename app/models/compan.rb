class Compan < ApplicationRecord
  belongs_to :archive
  belongs_to :fac_contact
  has_many :users
end
