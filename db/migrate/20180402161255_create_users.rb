class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_fname
      t.string :user_lname
      t.string :user_departament
      t.references :compan, foreign_key: true
      t.references :accessp, foreign_key: true

      t.timestamps
    end
  end
end
