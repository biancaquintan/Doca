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

class PedidoAtestado < Pedido
end
