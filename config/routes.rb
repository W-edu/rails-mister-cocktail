Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end

  resources :doses, only: [] do
    resources :ingredients, only: [:create, :new]
  end

  resources :doses, only: :destroy
  resources :ingredients, only: :destroy
end
