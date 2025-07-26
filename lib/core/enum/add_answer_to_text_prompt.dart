enum AddAnswerToTextPrompt implements Comparable<AddAnswerToTextPrompt> {
  combine(
      prompt:
          'Combine the following texts into a single response. Make text consistent and coherent.'),
  ;

  final String prompt;

  const AddAnswerToTextPrompt({
    required this.prompt,
  });

  String createPrompt({
    required String text,
    required String answer,
  }) {
    return '$prompt\nText: $text\n need to add: $answer';
  }

  @override
  int compareTo(AddAnswerToTextPrompt other) => compareTo(this);
}
