class CreateCtrlQualits < ActiveRecord::Migration[5.1]
  def change
    create_table :ctrl_qualits do |t|
      t.float :cquality_value
      t.string :cquality_date
      t.references :sub_cat_ctrl_qualit, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
