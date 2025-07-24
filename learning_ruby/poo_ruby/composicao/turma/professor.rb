require_relative "pessoa"

class Profesor < Pessoa
  attr_reader :disciplina
  def initialize(nome, idade, disciplina)
    super(nome, idade)
    @disciplina = disciplina
  end
end