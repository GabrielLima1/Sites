class CreateCatCtrlQualits < ActiveRecord::Migration[5.1]
  def change
    create_table :cat_ctrl_qualits do |t|
      t.string :ccquality_name

      t.timestamps
    end
  end
end
