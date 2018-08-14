class Pedido < ApplicationRecord
  belongs_to :curso
  belongs_to :situacao

  validates :nome, :matricula, :pasta, :turno, :curso, :periodo, :finalidadePedido,  presence: true
  validates_uniqueness_of :pasta
end
