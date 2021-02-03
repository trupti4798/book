Rails.application.routes.draw do
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #get 'sessions/welcome'
  #resources :userlogins

 get 'home/index'
root 'home#index'
resources :userlogins
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'userlogins#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'Welcome', to: 'sessions#welcome', as: 'welcome'


  get 'book/add'
  get 'book/new'

  get 'book/delete'
  get 'book/destroy'

  get 'book/update'
  get 'book/edit' 

  get 'book/list'
  get 'book/show'

  get 'book/search'
  get 'book/save'

  get 'book/home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'display/hello'
  get'display/login'


match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]

end
