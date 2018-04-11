class FacContact < ApplicationRecord
  belongs_to :archive
  belongs_to :end_factor
  has_many :compans
end
