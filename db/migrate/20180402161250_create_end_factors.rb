class CreateEndFactors < ActiveRecord::Migration[5.1]
  def change
    create_table :end_factors do |t|
      t.string :efactory_country
      t.string :efactory_state
      t.string :efactory_city
      t.string :efactory_burgh
      t.string :efactory_street
      t.string :efactory_zipcode
      t.string :efactory_longitude
      t.string :efactory_latitude

      t.timestamps
    end
  end
end
