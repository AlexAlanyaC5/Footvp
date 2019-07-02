Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
#NEW
get "/teams/new", to: "teams#new", as: "new_team"
#INDEX
get "/teams", to: "teams#index"
#CREATE
post "/teams", to: "teams#create"
# post "/teams", to: "teams#show"

#NEW
resources :users 
#CREATE

#
end
