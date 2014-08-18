GrantsController::Application.routes.draw do
  root to: "web/welcome#index"
  scope module: :web do
    resources :contests, only: :index
  end
end
