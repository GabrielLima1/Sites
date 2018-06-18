class Social < ApplicationRecord
  belongs_to :archive

  accepts_nested_attributes_for :archive, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
