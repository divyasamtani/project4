Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

namespace :api do

# SHOW ALL ZEALIST USERS (TO FIND FRIEND)
    resources :users, only: [:index, :show]
    #  GET           /api/users                        api/users#index
    #  GET           /api/users/:id                    api/users#show
# USER NAME SEARCH QUERY
    get '/user_search' => "users#search_user"
    #  GET           /api/user_search                  api/users#search_user

    scope'/users/:id' do
        resources :user_countries, only: [:index]
    #  GET           /api/users/:id/user_countries     api/user_countries#index
    end

# CURRENT USER PROFILE
    get '/user' => "users#user_profile", defaults: {format: 'json'}
    #  GET           /api/user                    api/users#user_profile



# GET ALL COUNTRIES
    resources :countries, only: [:index]
    #  GET           /api/countries                    api/countries#index

# WITHIN SCOPE OF USER
    scope '/user' do

        # COUNTRY LIST
        resources :user_countries, only: [:index, :create, :destroy], controller: 'user_countries', as: 'user_countries'
        #  GET           /api/user/user_countries          api/user_countries#index
        #  POST          /api/user/user_countries          api/user_countries#create
        #  DELETE        /api/user/user_countries/:id      api/user_countries#destroy


        # FRIENDS
        resources :friendships, only: [:index, :show, :create, :destroy]
        #  GET           /api/user/friendships             api/friendships#index
        #  POST          /api/user/friendships             api/friendships#create
        #  GET           /api/user/friendships/:id         api/friendships#show
        #  DELETE        /api/user/friendships/:id         api/friendships#destroy

        # TRAVEL NOTES
        resources :travel_notes

        #  GET           /api/user/travel_notes            api/travel_notes#index
        #  POST          /api/user/travel_notes            api/travel_notes#create
        #  GET           /api/user/travel_notes/new        api/travel_notes#new
        #  GET           /api/user/travel_notes/:id/edit   api/travel_notes#edit
        #  GET           /api/user/travel_notes/:index     api/travel_notes#show
        #  PATCH         /api/user/travel_notes/:index     api/travel_notes#update
        #  PUT           /api/user/travel_notes/:index     api/travel_notes#update
        #  DELETE        /api/user/travel_notes/:index     api/travel_notes#destroy

    end
  end
end
