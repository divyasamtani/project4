class AddTravelPercentageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :travel_percentage, :integer
  end
end
