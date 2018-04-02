class CreateSubCatCtrlQualits < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_cat_ctrl_qualits do |t|
      t.string :sccquality_name
      t.references :cat_ctrl_qualit, foreign_key: true

      t.timestamps
    end
  end
end
