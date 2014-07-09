Rails.application.routes.draw do
  root "homes#show"
  resource :home, only: :show
  resources :applications, only: :new
end

