GrantsController::Application.routes.draw do
  root to: "web/welcome#index"
  scope module: :web do
    resources :contests, only: :index
    resource :session, only: [ :new, :create, :destroy ]
    resources :grant_operators, only: :index
    namespace :admin do
      resources :contests, except: :show
      resources :grant_operators, except: :show
    end
  end
  get "/admin" => "web/sessions#new"
end
