Rails.application.routes.draw do
  devise_for :admin_users
  root "students#index"
  resources :students do
    resources :feedbacks
  end
end
