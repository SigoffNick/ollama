enum OllamaTextPrompt implements Comparable<OllamaTextPrompt> {
  combine(
      prompt:
          'Combine the following texts into a single response. Make text consistent and coherent.'),
  complete(
      prompt:
          'Complete the following sentence. The provided sentence can be small and can have only only word. You must complete it too. Return only the completed part. Be concise and relevant.'),
  ;

  final String prompt;

  const OllamaTextPrompt({
    required this.prompt,
  });

  String createPrompt({
    required List<String> texts,
  }) {
    return '$prompt\nTexts:\n${texts.join('\n')}';
  }

  @override
  int compareTo(OllamaTextPrompt other) => compareTo(this);
}
