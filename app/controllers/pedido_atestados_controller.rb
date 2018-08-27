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
        format.html { redirect_to @pedido_atestado, notice: 'Pedido atestado was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_atestado }
      else
        format.html { render :new }
        format.json { render json: @pedido_atestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_atestados/1
  # PATCH/PUT /pedido_atestados/1.json
  def update
    respond_to do |format|
      if @pedido_atestado.update(pedido_atestado_params)
        format.html { redirect_to @pedido_atestado, notice: 'Pedido atestado was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_atestado }
      else
        format.html { render :edit }
        format.json { render json: @pedido_atestado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_atestados/1
  # DELETE /pedido_atestados/1.json
  def destroy
    @pedido_atestado.destroy
    respond_to do |format|
      format.html { redirect_to pedido_atestados_url, notice: 'Pedido atestado was successfully destroyed.' }
      format.json { head :no_content }
    end
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