class Menu < ApplicationRecord
  has_many :cores
  has_many :sub_menus
end
