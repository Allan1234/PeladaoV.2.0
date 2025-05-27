class Insignia {
  final String id; // Adicionar ID se for persistir no DB
  final String nome;
  final String descricao;
  final String iconePath; // Caminho para o ícone em assets (ex: 'assets/insignias/artilheiro.png')

  Insignia({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.iconePath,
  });

  // TODO: Adicionar métodos fromJson/toJson se for usar Firebase/Firestore
}

// Exemplo de como a lógica de atribuição poderia ser (dentro de um serviço ou função apropriada):
/*
void verificarEAtribuirInsignias(Jogador jogador, List<Insignia> todasInsignias) {
  // Exemplo: Insígnia de Artilheiro
  Insignia insigniaArtilheiro = todasInsignias.firstWhere((i) => i.nome == 'Artilheiro');
  if (jogador.pontuacao > 100 && !jogador.insignias.any((i) => i.id == insigniaArtilheiro.id)) {
    jogador.insignias.add(insigniaArtilheiro);
    print('Jogador ${jogador.nome} ganhou a insígnia ${insigniaArtilheiro.nome}!');
    // TODO: Salvar atualização do jogador no DB
    // TODO: Enviar notificação sobre nova insígnia
  }

  // TODO: Adicionar lógica para outras insígnias (Mais Valioso, Rei das Assistências, etc.)
}
*/

