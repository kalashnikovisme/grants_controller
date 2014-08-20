GrantsController::Application.routes.draw do
  root to: "web/welcome#index"
  scope module: :web do
    resources :contests, only: :index
    resource :session, only: [ :new, :create, :destroy ]
    namespace :admin do
      resources :contests, except: :show
    end
  end
end
