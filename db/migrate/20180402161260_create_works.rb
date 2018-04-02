class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :work_title
      t.text :work_description
      t.references :end_factor, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
