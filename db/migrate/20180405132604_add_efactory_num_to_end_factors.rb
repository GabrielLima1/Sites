class AddEfactoryNumToEndFactors < ActiveRecord::Migration[5.1]
  def change
    add_column :end_factors, :end_factory_num, :string
  end
end
