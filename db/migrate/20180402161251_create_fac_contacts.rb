class CreateFacContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :fac_contacts do |t|
      t.string :fcontact_name
      t.string :fcontact_mail
      t.string :fcontact_tel
      t.string :fcontact_cel
      t.string :fcontact_hours
      t.boolean :fcontact_status
      t.references :archive, foreign_key: true
      t.references :end_factor, foreign_key: true

      t.timestamps
    end
  end
end
