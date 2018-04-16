class EndFactor < ApplicationRecord
  has_many :fac_contacts
  has_many :works

  default_value_for :efactory_country, "Brasil"
end
