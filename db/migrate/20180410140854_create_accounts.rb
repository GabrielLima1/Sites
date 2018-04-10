class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :account_fname
      t.string :account_lname
      t.string :account_departament
      t.string :ac_email
      t.string :ac_password
      t.references :compan, foreign_key: true
      t.references :accessp, foreign_key: true

      t.timestamps
    end
  end
end
