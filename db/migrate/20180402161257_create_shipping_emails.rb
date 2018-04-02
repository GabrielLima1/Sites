class CreateShippingEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_emails do |t|
      t.integer :semail_port
      t.string :semail_host
      t.boolean :semail_ishtml
      t.string :semail_mailer
      t.string :semail_smtp_secure
      t.string :semail_user
      t.string :semail_pass
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
