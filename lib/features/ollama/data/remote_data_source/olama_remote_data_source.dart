import '../request/requests_export.dart';

abstract class OlamaRemoteDataSource {
  Future<void> generateAnswer({
    required GenerateAnswerRequest request,
  });
}
