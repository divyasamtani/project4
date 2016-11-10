class FixUserColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :travel_percentage, :countries_visited
  end
end
