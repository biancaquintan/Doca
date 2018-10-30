Rails.application.routes.draw do
  devise_for :usuarios
  resources :pedido_atestados

  get 'cursos' => 'cursos#find_by_curso'
  get 'aluno' => 'alunos#index'
  get 'registroacademico' => 'registro_academicos#index'
  get 'biblioteca' => 'bibliotecas#index'
  get 'buscapedido' => 'home#search'
  get 'pedidos_registro' => 'registro_academicos#pedidos'
  get 'pedidos_biblioteca' => 'bibliotecas#pedidos'
  root 'home#index'
  get 'pedido_atestados/get_pedido/:id' => "pedido_atestados#get_pedido", as: "pedido_atestados_get_pedido"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
