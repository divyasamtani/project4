class AddWorldCoverageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :world_coverage, :integer
  end
end
