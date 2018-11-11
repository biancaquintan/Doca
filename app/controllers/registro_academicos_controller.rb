class RegistroAcademicosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :is_registro?  
  before_action -> { filter_pedido_atestado("situacao_id in (2,4,5)") }, only: [:pedidos]

  def index
  end

  def pedidos
  end
end
