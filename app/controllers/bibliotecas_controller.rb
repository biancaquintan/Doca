class BibliotecasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :is_bibliotecario?
  before_action -> { filter_pedido_atestado("situacao_id in (1, 3)") }, only: [:pedidos]

  def index
  end

  def pedidos
  end
end
