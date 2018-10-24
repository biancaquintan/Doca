class BibliotecasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :is_bibliotecario?
  before_action -> { filter_pedido_atestado("situacao_id in (1,2)") }, only: [:pedidos]

  def index
  end

  def pedidos
  end

  def pegaPedido
    @pedido = PedidoAtestado.find(params[:id])
    respond_to do |format|      
      format.js
    end
  end
end