class CreateContactUs < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_us do |t|
      t.string :contact_fname
      t.string :contact_lname
      t.string :contact_mail
      t.string :contact_tphone
      t.string :contact_cphone
      t.string :contact_city
      t.string :contact_state
      t.text :contact_message
      t.references :shipping_email, foreign_key: true

      t.timestamps
    end
  end
end
