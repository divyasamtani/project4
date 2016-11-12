class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :countries, through: :user_countries
  has_many :user_countries
  has_many :travel_notes
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, through: :inverse_friendships, :source => :user
  has_many :conversations

  def update_stats
    user_countries = self.user_countries
    count = user_countries.count
    coverage = (count.to_f / Country.count) * 100

    self.update(countries_visited: count, world_coverage: coverage)
  end
end
