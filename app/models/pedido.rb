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
