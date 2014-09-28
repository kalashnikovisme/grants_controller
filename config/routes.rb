GrantsController::Application.routes.draw do
  root to: "web/welcome#index"
  scope module: :web do
    resources :contests, only: [ :index, :show ]
    resources :helps, only: :show
    resources :hints, only: :show
    resource :session, only: [ :new, :create, :destroy ]
    resources :grant_operators, only: :index
    resources :users, only: [ :new, :create ]
    namespace :admin do
      resources :contests, except: :show
      resources :experts, except: :show
      resources :users, except: :show
      resources :helps, except: :show
      resources :grant_operators, except: :show
      resources :hints, except: :show
    end
    scope module: :user do
      resources :contest_requests, except: :show
    end
  end
  get "/admin" => "web/admin/welcome#index"
end
