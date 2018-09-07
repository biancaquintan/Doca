# == Schema Information
#
# Table name: cursos
#
#  id                :bigint(8)        not null, primary key
#  descricao         :string
#  nivelEscolaridade :string
#  quantidadePeriodo :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Curso < ApplicationRecord
    has_one :pedido
end
