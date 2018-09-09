class RegistroAcademicosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :is_registro?

  def index
  end

  def pedidos
    @pedido_atestados = PedidoAtestado.all
  end
end
