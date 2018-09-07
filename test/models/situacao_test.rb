# == Schema Information
#
# Table name: situacoes
#
#  id         :bigint(8)        not null, primary key
#  descricao  :string
#  observacao :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SituacaoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
