Rails.application.routes.draw do
  get 'plans/index'
  get 'lessons/hello'
  get 'lessons/hello', to: 'lessons#hello'
  get 'lessons/call', to: 'lessons#call'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :plans
end
