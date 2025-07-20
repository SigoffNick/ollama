enum OllamaModel {
  llama3dot1latest;

  @override
  String toString() {
    return switch (this) {
      llama3dot1latest => 'llama3.1:latest',
    };
  }
}
