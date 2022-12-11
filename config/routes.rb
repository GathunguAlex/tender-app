Rails.application.routes.draw do
# resources :index
resources :tenders
resources :users, :show

post "/signup", to: "users#create"
post "/login", to: "sessions#create"
get "/tenders/id", to: "tenders#show"
get "/me", to: "users#show"
get "/tenders", to: "tenders#index"

end

#resources :user, only:[:show, :create]
#   resources :tenders, only: [:index, :show, :create, :update, :destroy ]
#   #first step is setting up the route next step is to controllers
#   #to make sure we do not have unused routes we add only like in line 2 
  # get "/tenders", to: "tenders#index"
  # get "/tenders/id", to: "tenders#show"
  # post "/tenders", to: "tender#create"
  # patch "/tenders/:id", to: "tenders#update"
  # delete "/tenders/:id", to: "tender#delete"

#  #resource user

#   get "/login", to: "sessions#create"
#   post "/signup", to: "users#create"
#   delete "/logout", to: "sessions#logout"
#   get "/auth",to: "user#show"
#   get "/tenders", to: "user#index"
#   get "/tenders/id", to: "user#tenders"

  # get "/cookie_click", to: "session#click"
  
# end
