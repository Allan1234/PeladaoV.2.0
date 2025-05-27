class Posicao {
  final String nome;
  final int limite;

  Posicao(this.nome, this.limite);

  // Exemplo de lista de posições (pode vir do admin/configuração)
  static List<Posicao> getPosicoesPadrao() {
    return [
      Posicao("Goleiro", 1),
      Posicao("Zagueiro", 2),
      Posicao("Lateral", 2),
      Posicao("Meio-campo", 4),
      Posicao("Atacante", 2),
    ];
  }

  // TODO: Adicionar métodos fromJson/toJson se for buscar do DB
}

// Exemplo de lógica de verificação (pode estar em um serviço de escalação)
/*
bool podeEscalar(String posicaoNome, List<JogadorEscalado> timeAtual, List<Posicao> posicoesConfiguradas) {
  try {
    Posicao posicaoInfo = posicoesConfiguradas.firstWhere((p) => p.nome == posicaoNome);
    int jogadoresNestaPosicao = timeAtual.where((j) => j.posicao == posicaoNome).length;
    return jogadoresNestaPosicao < posicaoInfo.limite;
  } catch (e) {
    print("Erro ao verificar posição $posicaoNome: $e"); // Posição não encontrada na configuração?
    return false;
  }
}

// Modelo auxiliar para o exemplo acima
class JogadorEscalado {
  String id;
  String nome;
  String posicao;
  JogadorEscalado(this.id, this.nome, this.posicao);
}
*/

