class CursosController < ApplicationController
  def find_by_curso
    if params[:curso_id].to_i > 0
      @curso = Curso.find(params[:curso_id])      
    else
      @curso = Curso.find(1)
      @curso.quantidadePeriodo = 0
    end
    respond_to do |format|      
      format.json { render :json => @curso }
    end
  end
end