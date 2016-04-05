Rails.application.routes.draw do
  namespace :scope do
    get '/reports', to: 'reports#index'
  end
end
