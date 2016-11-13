class AdjustUserTableColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :world_coverage, :float
  end
end
