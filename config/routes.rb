Rails.application.routes.draw do
  get "data/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  
  root 'home#index'
  get "/name" , to: "home#get_name"
  get "/age" , to: "home#get_age" 
  get "/data" , to: "data#index"
  post "/search", to: "data#search"
  get "/say-welcome/:name", to: "data#say_welcome"
  get "/display", to: "data#display"
end

