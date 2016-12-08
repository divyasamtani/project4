class AddDefaultsToUser < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:users, :world_coverage, 0.0)
    change_column_default(:users, :travel_status, 'Noob')
  end
end
