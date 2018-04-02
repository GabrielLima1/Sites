class ApplicationProduct < ApplicationRecord
  belongs_to :product
  belongs_to :application
end
