class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.boolean :product_status
      t.references :archive, foreign_key: true

      t.timestamps
    end
  end
end
