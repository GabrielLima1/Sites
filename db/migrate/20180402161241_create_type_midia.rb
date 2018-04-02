class CreateTypeMidia < ActiveRecord::Migration[5.1]
  def change
    create_table :type_midia do |t|
      t.string :tmidia_name

      t.timestamps
    end
  end
end
