import '../exceptions/exceptions_export.dart';

extension StringExtensions on String {
  String extractJson() {
    final int jsonStart = indexOf('{');
    final int jsonEnd = lastIndexOf('}');

    if (jsonStart != -1 && jsonEnd != -1 && jsonEnd > jsonStart) {
      return substring(jsonStart, jsonEnd + 1);
    }

    throw NoJsonException(
      json: this,
    );
  }
}
