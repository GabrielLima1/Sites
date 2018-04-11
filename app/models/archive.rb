class Archive < ApplicationRecord
  belongs_to :type_archive
  has_many :compans
  has_many :cores
  has_many :fac_contacts
  has_many :products
  has_many :socials
end
