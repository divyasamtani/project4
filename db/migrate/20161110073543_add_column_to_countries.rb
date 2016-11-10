class AddColumnToCountries < ActiveRecord::Migration[5.0]
  def change
    add_column :countries, :continent, :string
  end
end
