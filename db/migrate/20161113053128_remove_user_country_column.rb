class RemoveUserCountryColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :user_countries, :checked
  end
end
