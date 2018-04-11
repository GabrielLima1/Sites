class Core < ApplicationRecord
  belongs_to :archive
  belongs_to :menu
  belongs_to :user
end
