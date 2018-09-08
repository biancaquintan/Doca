class BibliotecasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :is_bibliotecario?

  def index
  end

  def pedidos
    @pedido_atestados = PedidoAtestado.all
  end
end
