# Diário de Vida, Fé e Evolução

Aplicativo Flutter para Android com foco em consciência espiritual, emocional e evolução pessoal.

## O que foi implementado (MVP)

- Tela de login inicial (email/senha e botão Google).
- Navegação inferior com abas: Hoje, Diário, Emoções, Evolução, Histórico e IA.
- Estrutura limpa com pastas `models`, `controllers`, `services`, `screens` e `widgets`.
- Seções principais do diário:
  - painel diário com intenção, humor e versículo;
  - reflexão bíblica;
  - gratidão;
  - registro do dia;
  - autoavaliação emocional;
  - protocolos emocionais;
  - checklist de hábitos;
  - decisões de evolução;
  - histórico/estatísticas;
  - aba de reflexão com IA (Conselheiro).

## Arquitetura técnica

- **Frontend**: Flutter
- **Gerência de estado**: Provider
- **Backend/Banco (pronto para integração)**: Firebase + Firestore
- **Autenticação**: Firebase Auth / Google Sign-In (estrutura preparada)
- **Modo offline**: Firestore possui cache local offline nativo

## Como rodar

```bash
flutter pub get
flutter run
```

## Próximos passos recomendados

1. Configurar Firebase (`firebase_options.dart`) e inicialização no `main.dart`.
2. Substituir `AuthService` local por FirebaseAuth.
3. Persistir formulários no Firestore com modelos já criados.
4. Integrar OpenAI API no serviço de IA para análise de reflexões.
5. Implementar bloqueio por biometria/senha.
6. Adicionar notificações diárias e backup automático.
