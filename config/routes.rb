Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :dose, only: [:new, :create, :destroy]
  end
end
