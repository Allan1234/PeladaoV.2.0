# Checklist Final - Atualização App Peladão V2.0

**Status Geral:** A estrutura do projeto foi atualizada para a V2.0, incorporando os requisitos dos documentos `peladao_v2_documento_completo.txt` e `peladao_v2_itens_faltantes_completo.txt`. Foram criados os arquivos base, modelos, serviços e páginas com placeholders indicando onde a lógica específica e integrações com backend/serviços devem ser implementadas. A logo foi integrada.

**Validação:** Devido à ausência do SDK Flutter no ambiente, a validação funcional e testes de compilação não puderam ser realizados. A validação foi feita por revisão de código e estrutura.

**Itens Concluídos/Implementados (Estrutura/Placeholders):**

- [X] Receber arquivos do usuário (app v1.0 .zip, instruções .txt).
- [X] Receber arquivo da logo do usuário.
- [X] Receber arquivo de ajustes e código complementar (`peladao_v2_itens_faltantes_completo.txt`).
- [X] Analisar a estrutura do projeto Flutter no arquivo .zip (`peladao_flutter_projeto_corrigido.zip`).
- [X] Analisar o documento de instruções (`peladao_v2_documento_completo.txt`).
- [X] Analisar o documento de itens faltantes (`peladao_v2_itens_faltantes_completo.txt`).
- [X] Listar detalhadamente todas as modificações a serem implementadas.
- [X] Reestruturar pastas e arquivos em `/lib` e `/assets`.
- [X] Atualizar `pubspec.yaml` para incluir assets.
- [X] Adicionar dependências faltantes ao `pubspec.yaml` (`pdf`, `printing`, `firebase_messaging` (comentado), `image_picker`, `google_mobile_ads`).
- [X] Implementar fluxo de Cadastro (com foto obrigatória e compactação) - Reforçado com `image_picker`.
- [X] Implementar fluxo de Login (com senha mestre para admin) - Placeholder.
- [X] Implementar funcionalidades de Administrador (gerenciar ligas, desafios, campeonatos, encerrar liga, gerar relatório PDF) - Placeholders no Painel.
- [X] Implementar funcionalidades de Jogador (escalar time, rankings, insígnias, verificar limite de posição) - Models/Placeholders.
- [X] Implementar sistema de Histórico (insígnias e 'Perebas') - Model updated.
- [X] Implementar sistema de Notificações automáticas e humoradas - Service/Page placeholder, reforçado com `firebase_messaging` (comentado).
- [X] Implementar geração automática de Relatórios PDF (scouts) usando `pdf` e `printing` - Service criado.
- [X] Implementar Sistema de Scout ajustável - Page placeholder.
- [X] Implementar Sistema de Insígnias - Model criado, atribuição placeholder, assets/icones placeholder.
- [X] Implementar Cadastro de foto (exibição, restrição de alteração) - Reforçado com `image_picker`.
- [X] Implementar Desafio da Liga (Desafio Lança!) - Model e tela de criação placeholder.
- [X] Implementar Encerramento de Liga - Placeholder no Painel.
- [X] Implementar Painel com destaques - Placeholder no Painel.
- [X] Implementar escalabilidade por posições - Model criado, lógica de verificação placeholder.
- [X] Usar moeda 'PEREBAS' - Model updated.
- [X] Implementar as alterações no código-fonte Flutter com base nas instruções e itens faltantes - Estrutura e placeholders implementados.
- [X] Substituir/adicionar a nova logo e ícones - Logo adicionada, ícones placeholder.
- [X] Implementar AdMob (simples e rápido, conforme escolha) - Placeholder no Painel/Main.
- [X] Implementar "ensigna" (rápido e fácil, conforme escolha) - Reforçado com sistema de Insígnias (Model/Placeholders).

**Itens Pendentes (Requerem Lógica de Negócio/Backend/UI Detalhada):**

- [ ] **Sistema de Pontuação ajustável pelo admin:** Requer implementação da lógica de como o admin ajusta os critérios e como isso reflete no cálculo dos pontos.
- [ ] **Garantir restrições (jogador não altera foto):** Requer implementação da lógica de permissão na tela de perfil do jogador, provavelmente ligada ao `AuthService`.
- [ ] **Implementação Completa da Lógica:** Todos os placeholders `// TODO:` nos arquivos `.dart` precisam ser substituídos pela lógica real, incluindo chamadas a serviços de backend (Firebase ou outro), manipulação de estado, e construção detalhada da UI.
- [ ] **Ícones Reais:** Substituir `assets/images/icones.png` e outros placeholders de ícones pelos arquivos finais.
- [ ] **Configuração Firebase/Backend:** Se for usar Firebase, é necessário configurar o projeto no console Firebase, adicionar os arquivos de configuração (`google-services.json`, `GoogleService-Info.plist`) e descomentar/implementar o código relacionado ao Firebase (Auth, Firestore, Storage, Messaging).
- [ ] **Testes e Validação Funcional:** Compilar e testar exaustivamente o aplicativo em emuladores/dispositivos Android e iOS.

**Próximos Passos Recomendados (Usuário):**

1.  Configurar ambiente Flutter.
2.  Revisar código e placeholders `// TODO:`.
3.  Implementar lógica de negócio pendente e integrações com backend.
4.  Adicionar ícones e refinar UI.
5.  Compilar e testar.
6.  Realizar deploy (GitHub, Codemagic, etc.).
