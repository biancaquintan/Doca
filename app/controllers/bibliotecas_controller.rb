class BibliotecasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :is_bibliotecario?

  def index
  end
end