class CreateMidia < ActiveRecord::Migration[5.1]
  def change
    create_table :midia do |t|
      t.string :midia_name
      t.string :midia_date
      t.string :midia_url
      t.references :type_midia, foreign_key: true

      t.timestamps
    end
  end
end
