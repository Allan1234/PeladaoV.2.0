class Tecnico {
  final String id;
  final String nome;
  final String email;
  final String fotoUrl;
  // TODO: Adicionar mais campos conforme necessário (ligas gerenciadas, etc.)

  Tecnico({
    required this.id,
    required this.nome,
    required this.email,
    required this.fotoUrl,
  });

  // TODO: Adicionar métodos fromJson/toJson se for usar Firebase/Firestore
}

