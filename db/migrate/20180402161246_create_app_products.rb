class CreateAppProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :app_products do |t|
      t.string :aproduct_status
      t.references :product, foreign_key: true
      t.references :app, foreign_key: true

      t.timestamps
    end
  end
end
