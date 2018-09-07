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
end