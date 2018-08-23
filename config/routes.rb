Rails.application.routes.draw do
  devise_for :usuarios
  resources :pedido_atestados
  get 'home/index'
  get 'home/home_aluno'
  get 'home/home_registro_academico'
  get 'home/home_biblioteca'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
