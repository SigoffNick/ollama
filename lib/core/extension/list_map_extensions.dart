import '../ollama/ollama_export.dart';

extension LisrMapExtensions on List<Map<String, dynamic>> {
  List<NoteModel> getNotes() {
    if (this is! List<Map<String, dynamic>>) {
      throw ArgumentError(
        'Expected a List<Map<String, dynamic>>, but got: $runtimeType',
      );
    }
    return [];
  }
}
