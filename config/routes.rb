Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# root 'statics#index'

namespace :api do

# GET CURRENT USER INFO FOR PROFILE

    get '/user' => "users#user_profile", defaults: {format: 'json'}
    # GET     /api/user     api/users#user_profile {:format=>"json"}

# GET ALL COUNTRIES

    resources :countries, only: [:index]
    #  GET           /api/countries                    api/countries#index

# GET CURRENT USER'S COUNTRIES

    scope '/user' do
      resources :user_countries, only: [:index, :create, :destroy], controller: 'user_countries', as: 'user_countries'
    #  GET           /api/user/user_countries          api/user_countries#index
    #  POST          /api/user/user_countries          api/user_countries#create
    #  DELETE        /api/user/user_countries/:id      api/user_countries#destroy

# GET CURRENT USER'S NOTES

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
