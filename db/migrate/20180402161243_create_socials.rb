class CreateSocials < ActiveRecord::Migration[5.1]
  def change
    create_table :socials do |t|
      t.string :social_name
      t.string :social_link
      t.boolean :social_status
      t.references :midia, foreign_key: true

      t.timestamps
    end
  end
end
