import '../payload/export_payloads.dart';

abstract class OlamaRepository {
  Future<void> generateAnswer({
    required GenerateAnswerPayload payload,
  });
}
