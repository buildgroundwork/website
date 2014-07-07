Rails.application.routes.draw do
  root "homes#show"
  resource :home, only: :show
end

