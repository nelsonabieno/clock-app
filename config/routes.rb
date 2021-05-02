Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#index"
  get "/login" => "users#login"
  get "/sign_up" => "users#sign_up"
  post "/sign_up" => "users#create"
  post "/clock_in" => "clockevents#clock_in"
  post "/clock_out" => "clockevents#clock_out"
end
