import '../request/requests_export.dart';

abstract class OlamaRemoteDataSource {
  Future<Stream> generateAnswer({
    required GenerateAnswerRequest request,
  });
}
