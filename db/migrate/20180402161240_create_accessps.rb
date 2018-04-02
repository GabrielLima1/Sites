class CreateAccessps < ActiveRecord::Migration[5.1]
  def change
    create_table :accessps do |t|
      t.string :accessp_name

      t.timestamps
    end
  end
end
