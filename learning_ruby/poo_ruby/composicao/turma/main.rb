require_relative "aluno"
require_relative "professor"
require_relative "turma"


a1 = Aluno.new("Lana", 35, 123653)
a2 = Aluno.new("Junior", 30, 123655)
a3 = Aluno.new("Joao", 25, 123657)

p1 = Profesor.new("Etevaldo", 60, "Filosofia")

t1 = Turma.new([a1, a2, a3], p1)
t1.dados_disc