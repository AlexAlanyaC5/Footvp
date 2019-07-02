Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm

get "/teams/new", to: "teams#new", as: "new_team"
get "/teams", to: "teams#index"
post "/teams", to: "teams#create"
# post "/teams", to: "teams#show"
end
