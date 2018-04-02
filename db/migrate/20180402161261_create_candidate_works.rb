class CreateCandidateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :candidate_works do |t|
      t.string :cwork_fname
      t.string :cwork_lname
      t.string :cwork_cep
      t.string :cwork_state
      t.string :cwork_city
      t.string :cwork_burgh
      t.string :cwork_street
      t.string :cwork_num
      t.string :cwork_complement
      t.string :cwork_gender
      t.string :cwork_mail
      t.string :cwork_tphone
      t.string :cwork_cphone
      t.references :work, foreign_key: true

      t.timestamps
    end
  end
end
