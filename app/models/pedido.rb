class Pedido < ApplicationRecord
  belongs_to :curso
  belongs_to :situacao

  validates :nome, :turno, :curso, :periodo, :finalidadePedido, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, allow_blank: true
  validates :matricula, length: { is: 12}
  validates :pasta, length: { :in => 5..6 }
  validates :telefone, length: { is: 14 }, allow_blank: true
  validates :celular, length: { is: 15 }, allow_blank: true
end
