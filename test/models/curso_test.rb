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

require 'test_helper'

class CursoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
