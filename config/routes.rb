Rails.application.routes.draw do
  get '/reports', to: 'reports#index'
end
