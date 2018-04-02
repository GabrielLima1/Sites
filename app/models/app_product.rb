class AppProduct < ApplicationRecord
  belongs_to :product
  belongs_to :app
end
