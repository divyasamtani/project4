class CreateTravelNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :travel_notes do |t|
      t.string :title
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
