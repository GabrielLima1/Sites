class CreateTypeArchive < ActiveRecord::Migration[5.1]
  def change
    create_table :type_archives do |t|
      t.string :tarchive_name

      t.timestamps
    end
  end
end
