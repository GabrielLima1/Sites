class Work < ApplicationRecord
  belongs_to :end_factory
  belongs_to :user
  has_many :candidate_works
end
