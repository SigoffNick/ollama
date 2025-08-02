class NoJsonException implements Exception {
  final String message;
  final String json;

  NoJsonException({
    required this.json,
    this.message = 'No JSON found in the response.',
  });

  @override
  String toString() {
    return '$message JSON: $json';
  }
}
