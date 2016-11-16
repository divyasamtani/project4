class AddColumntoUser < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :travel_status, :string
  end
end
