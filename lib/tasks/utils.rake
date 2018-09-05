namespace :utils do
  desc "Cadastro básico de Situações e Cursos"
  task seed: :environment do
    puts "Cadastrando as situações..."
      Situacao.create!([{descricao: "Em Análise", observacao: ""},
                        {descricao: "Aprovado", observacao: ""},
                        {descricao: "Negado", observacao: ""},
                        {descricao: "Disponível para retirada", observacao: ""},
                        {descricao: "Entregue", observacao: ""},
      ])
    puts "Cadastrando Cursos..."
      Curso.create([{descricao: "Sistemas de Informação", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Engenharia da Computação", nivelEscolaridade: "Superior", quantidadePeriodo: 10},
                    {descricao: "Engenharia de Controle e Automação", nivelEscolaridade: "Superior", quantidadePeriodo: 10},
                    {descricao: "Engenharia Elétrica", nivelEscolaridade: "Superior", quantidadePeriodo: 10},
                    {descricao: "Arquitetura e Urbanismo", nivelEscolaridade: "Superior", quantidadePeriodo: 10},
                    {descricao: "Licenciatura em Educação Física", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Licenciatura em Matemática", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Licenciatura em Letras", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Licenciatura em Teatro", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Licenciatura em Química", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Licenciatura em Geografia", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Técnico em Eletrônica", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Técnico em Automação", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Técnico em Informática", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Técnico em Mecânica", nivelEscolaridade: "Técnico",quantidadePeriodo: 4},
                    {descricao: "Técnico em Edificações", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Técnico em Estradas", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Técnico em Química", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Tecnólogo em Design Gráfico", nivelEscolaridade: "Superior",quantidadePeriodo: 6},
                    {descricao: "Tecnólogo em Manutenção Industrial", nivelEscolaridade: "Superior",quantidadePeriodo: 6}
      ])
    puts "Cadastro de Usuários"
      Usuario.create([{email: "biblioteca@iff.edu.br", password: "biblioteca123", password_confirmation: "biblioteca123", tipo: "biblioteca"},
                      {email: "registro@iff.edu.br", password: "registro123", password_confirmation: "registro123", tipo: "registro"}
      ])
  end
end