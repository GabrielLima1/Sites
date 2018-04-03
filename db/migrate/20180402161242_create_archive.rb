class CreateArchive < ActiveRecord::Migration[5.1]
  def change
    create_table :archives do |t|
      t.string :archive_name
      t.string :archive_date
      t.string :archive_url
      t.references :type_archive, foreign_key: true

      t.timestamps
    end
  end
end
