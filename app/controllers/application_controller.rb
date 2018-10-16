class ApplicationController < ActionController::Base

  protected
  def is_bibliotecario?
    unless current_usuario.tipo == "biblioteca"
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Sem permissão!.' }
      end
      sign_out(current_usuario)
    end
  end

  def is_registro?
    unless current_usuario.tipo == "registro"
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Sem permissão!.' }
      end
      sign_out(current_usuario)
    end
  end

  # Filtra os pedidos para a tela de acesso da biblioteca ou Registro
  def filter_pedido_atestado(acesso)
    @turno = params[:turno]
    @nivel = params[:nivel]
    filtro = acesso
    
    if @turno.to_s != ""
      filtro = filtro + " and turno = '" + @turno.to_s + "'"
    end

    if @nivel.to_s != ""
      idCurso = ""
      cursos = Curso.where(nivelEscolaridade: @nivel)
      cursos.each do |curso|
        idCurso = idCurso + curso.id.to_s + ","
      end
      idCurso = idCurso[0..(idCurso.length-2)]
      filtro = filtro + " and curso_id in (" + idCurso + ")"
    end

    @pedido_atestados = PedidoAtestado.where(filtro).order("created_at")    
  end
end