class AddWorldCoverageDefaultToUser < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:users, :countries_visited, 0)
  end
end
