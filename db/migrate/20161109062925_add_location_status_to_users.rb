class AddLocationStatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :location_status, :string
  end
end
