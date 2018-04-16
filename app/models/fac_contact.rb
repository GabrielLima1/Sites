class FacContact < ApplicationRecord
  belongs_to :archive
  belongs_to :end_factor
  has_many :compans

  default_value_for :fcontact_hours, "07:30 ~ 17:30"
end
