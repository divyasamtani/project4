class AddColumnToUserCountries < ActiveRecord::Migration[5.0]
  def change
    add_column :user_countries, :checked, :boolean
  end
end
