class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :menu_name
      t.boolean :menu_status

      t.timestamps
    end
  end
end
