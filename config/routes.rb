GrantsController::Application.routes.draw do
  root to: "web/welcome#index"
  scope module: :web do
    resources :contests, only: [ :index, :show ]
    resources :pages, only: [] do
      collection do
        get '/:section' => 'pages#index'
      end
    end
    resources :helps, only: :show
    resources :hints, only: :show
    resource :session, only: [ :new, :create, :destroy ]
    resources :organizations, only: :index
    resources :users, only: [ :new, :create ]
    namespace :admin do
      resources :contests, except: :show
      resources :experts, except: :show
      resources :users, except: :show
      resources :helps, except: :show
      resources :organizations, except: :show
      resources :hints, except: :show
      resources :pages, except: :show
    end
    scope module: :user do
      resources :contest_requests, except: :show
    end
  end
  get "/admin" => "web/admin/welcome#index"
end
