class Pedido < ApplicationRecord
  belongs_to :curso
  belongs_to :situacao
end
