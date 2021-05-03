Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "/login" => "users#login"
  post "/login" => "users#authenticate"
  delete "logout", to: "users#logout"
  get "/sign_up" => "users#sign_up"
  get "/clock_events" => "clockevents#index"
  post "/sign_up" => "users#create"
  post "/clock_in" => "clockevents#clock_in"
  post "/clock_out" => "clockevents#clock_out"
end
