class CreateBeClients < ActiveRecord::Migration[5.1]
  def change
    create_table :be_clients do |t|
      t.string :client_company_name
      t.string :client_cnpj
      t.string :client_contact_name
      t.string :client_mail
      t.string :client_state
      t.string :client_city
      t.string :client_tphone
      t.string :client_cphone
      t.string :client_came_to_us
      t.references :shipping_email, foreign_key: true

      t.timestamps
    end
  end
end
