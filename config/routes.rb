Rails.application.routes.draw do
  get 'welcome/Index'
  root 'welcome#Index'
  get 'books/new'
  get 'books/list' ,to: 'books#list' ,as: :book
  resources :articles  do
    resources :comments , shallow: true
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
