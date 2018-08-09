namespace :utils do
  desc "Cadastro básico de Situações e Cursos"
  task seed: :environment do
    puts "Cadastrando as situações..."
      Situacao.create!([{descricao: "En Análise", observacao: ""},
                        {descricao: "Aprovado", observacao: ""},
                        {descricao: "Negado", observacao: ""},
                        {descricao: "Disponível Para Retirada", observacao: ""},
                        {descricao: "Entregue", observacao: ""},
      ])
    puts "Cadastrando Cursos..."
      Curso.create([{descricao: "Sistemas de Informação", nivelEscolaridade: "Superior", quantidadePeriodo: 8},
                    {descricao: "Engenharia da Computação", nivelEscolaridade: "Superior", quantidadePeriodo: 10},
                    {descricao: "Eletrônica", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Informática", nivelEscolaridade: "Técnico", quantidadePeriodo: 4},
                    {descricao: "Mecânica", nivelEscolaridade: "Técnico",quantidadePeriodo: 4},
                    {descricao: "Design", nivelEscolaridade: "Superior",quantidadePeriodo: 6}
      ])
  end
end