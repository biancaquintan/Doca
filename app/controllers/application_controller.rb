class ApplicationController < ActionController::Base

  protected
  def is_bibliotecario?
    unless current_usuario.tipo == "biblioteca"
      respond_to do |format|
        flash[:error] = 'Permissão negada! O usuário não pertence ao módulo Biblioteca.'
        format.html { redirect_to root_path }
      end
      sign_out(current_usuario)
    end
  end

  def is_registro?
    unless current_usuario.tipo == "registro"
      respond_to do |format|
        flash[:error] = 'Permissão negada! O usuário não pertence ao módulo Registro Acadêmico.'
        format.html { redirect_to root_path }
      end
      sign_out(current_usuario)
    end
  end

  # Filtra os pedidos para a tela de acesso da biblioteca ou Registro
  def filter_pedido_atestado(acesso)
    @curso = params[:curso]
    # @curso_busca = Curso.where("id in #{params[:curso_id]}")
    @nivel = params[:nivel]
    @situacao = params[:situacao_id]
    @situacao_busca = Situacao.where("id in #{acesso}")
    
    if @situacao.to_s != ""
      filtro = "situacao_id = #{@situacao}"
    else
      filtro = "situacao_id in #{acesso}"
    end

    if @curso.to_s != ""
      filtro += " and curso_id = '" + @curso.to_s + "'"
    end

    if @nivel.to_s != ""
      idCurso = ""
      cursos = Curso.where(nivelEscolaridade: @nivel)
      cursos.each do |curso|
        idCurso = idCurso + curso.id.to_s + ","
      end
      idCurso = idCurso[0..(idCurso.length-2)]
      filtro += " and curso_id in (" + idCurso + ")"
    end

    @pedido_atestados = PedidoAtestado.where(filtro).order("created_at")
  end
end
