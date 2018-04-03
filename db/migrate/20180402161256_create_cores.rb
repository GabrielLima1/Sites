class CreateCores < ActiveRecord::Migration[5.1]
  def change
    create_table :cores do |t|
      t.string :core_title
      t.text :core_description
      t.references :archive, foreign_key: true
      t.references :menu, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
