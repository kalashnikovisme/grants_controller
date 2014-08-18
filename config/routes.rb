GrantsController::Application.routes.draw do
  scope module: :web do
    resources :contests, only: :index
  end
end
