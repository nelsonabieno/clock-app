Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#index"
  get "/login" => "authentication#index"
  post "/sign_up" => "authentication#register"
  post "/clock_in" => "clockevents#clock_in"
  post "/clock_out" => "clockevents#clock_out"
end
