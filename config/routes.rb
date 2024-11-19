Rails.application.routes.draw do
  root "home#index"
  namespace :api do
    namespace :v1 do
      post "/gps", to: "gps#create"
    end
  end
  get "/gps_data", to: "home#gps_data" # Nueva ruta para los datos GPS en tiempo real
end
