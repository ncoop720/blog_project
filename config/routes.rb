Rails.application.routes.draw do
  resources :comments
  resources :posts
  root 'posts#index'
  get 'index' => 'practice#index'
  post 'index' => 'posts#index'
	get 'about' => 'practice#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
