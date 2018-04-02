class CreateSubMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_menus do |t|
      t.string :smenu_name
      t.boolean :smenu_status
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
