Rails.application.routes.draw do
  scope ':user_code' do
    resources :tweets
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
