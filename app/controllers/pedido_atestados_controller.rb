# == Schema Information
#
# Table name: pedidos
#
#  id               :bigint(8)        not null, primary key
#  nome             :string
#  matricula        :string
#  pasta            :string
#  periodo          :string
#  turno            :string
#  anoLetivo        :string
#  telefone         :string
#  celular          :string
#  email            :string
#  finalidadePedido :text
#  type             :string
#  curso_id         :bigint(8)
#  situacao_id      :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class PedidoAtestadosController < ApplicationController
  before_action :set_pedido_atestado, only: [:show, :edit, :update, :destroy]

  # GET /pedido_atestados
  # GET /pedido_atestados.json
  def index
    @pedido_atestados = PedidoAtestado.all
  end

  # GET /pedido_atestados/1
  # GET /pedido_atestados/1.json
  def show
  end

  # GET /pedido_atestados/new
  def new
    @pedido_atestado = PedidoAtestado.new
    @pedido_atestado.situacao_id = 1
  end

  # GET /pedido_atestados/1/edit
  def edit
  end

  # POST /pedido_atestados
  # POST /pedido_atestados.json
  def create
    @pedido_atestado = PedidoAtestado.new(pedido_atestado_params)

    respond_to do |format|
      if @pedido_atestado.save
        format.json { }
        format.html { redirect_to aluno_path(), notice: 'Pedido encaminhado com sucesso.' }
      else
        format.html { render :new }
        format.json { render json: @pedido_atestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_atestados/1
  # PATCH/PUT /pedido_atestados/1.json
  def update
    if current_usuario.tipo == "biblioteca" then
      @pagina_home = pedidos_biblioteca_path
    else
      @pagina_home = pedidos_registro_path
    end

    respond_to do |format|
      if @pedido_atestado.update(pedido_atestado_params)
        format.html { redirect_to @pagina_home, notice: 'Pedido atualizado com sucesso!' }
        format.json { render @pagina_home, status: :ok, location: @pedido_atestado }
      else
        format.html { render @pagina_home }
        format.json { render json: @pedido_atestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_atestados/1
  # DELETE /pedido_atestados/1.json
  def destroy
    @pedido_atestado.destroy
    respond_to do |format|
      format.html { redirect_to pedido_atestados_url, notice: 'Pedido excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  def get_pedido
    @pedido = PedidoAtestado.find(params[:id])
    if [1, 3].include? @pedido.situacao_id then
      @situacoes = Situacao.find(1,2,3)
    else
      @situacoes = Situacao.find(2,4,5)
    end
  end

  def get_situacao
    @pedido_atestado = PedidoAtestado.where(pasta: params[:pasta]).last
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_atestado
      @pedido_atestado = PedidoAtestado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_atestado_params
      # params.fetch(:pedido_atestado, {})
      params.require(:pedido_atestado).permit(:type, :nome, :matricula, :pasta, :periodo, :turno, :telefone, :celular, :email, :finalidadePedido, :curso_id, :situacao_id)
    end
end
