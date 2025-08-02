class OllamaResponse {
  final String aiVariant;
  final String problems;
  final String questions;
  final String json;
  final String thinking;

  OllamaResponse({
    required this.aiVariant,
    required this.problems,
    required this.questions,
    required this.json,
    required this.thinking,
  });

  factory OllamaResponse.fromString(String response) {
    return OllamaResponse(
      aiVariant: response,
      problems: '',
      questions: '',
      json: '',
      thinking: '',
    );
  }
}
