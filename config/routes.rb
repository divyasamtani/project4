Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# root 'statics#index'

namespace :api do
    resources :countries, only: [:index]
    #    api_countries      GET           /api/countries                    api/countries#index

    scope '/user' do
      resources :user_countries, only: [:index, :create, :destroy], controller: 'user_countries', as: 'user_countries'
    #    api_user_countries GET           /api/user/user_countries          api/user_countries#index
    #                       POST          /api/user/user_countries          api/user_countries#create
    #    api_user_country   DELETE        /api/user/user_countries/:id      api/user_countries#destroy

      resources :travel_notes

    # api_travel_notes      GET           /api/user/travel_notes            api/travel_notes#index
    #                       POST          /api/user/travel_notes            api/travel_notes#create
    #  new_api_travel_note  GET           /api/user/travel_notes/new        api/travel_notes#new
    # edit_api_travel_note  GET           /api/user/travel_notes/:id/edit   api/travel_notes#edit
    #      api_travel_note  GET           /api/user/travel_notes/:index     api/travel_notes#show
    #                       PATCH         /api/user/travel_notes/:index     api/travel_notes#update
    #                       PUT           /api/user/travel_notes/:index     api/travel_notes#update
    #                       DELETE        /api/user/travel_notes/:index     api/travel_notes#destroy

    end
  end
end
