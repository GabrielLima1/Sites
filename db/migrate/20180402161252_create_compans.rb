class CreateCompans < ActiveRecord::Migration[5.1]
  def change
    create_table :compans do |t|
      t.string :company_name
      t.text :company_description
      t.references :midia, foreign_key: true
      t.references :fac_contact, foreign_key: true

      t.timestamps
    end
  end
end
