class SubCatCtrlQualit < ApplicationRecord
  belongs_to :cat_ctrl_qualit
  has_many :ctrl_qualits
end
