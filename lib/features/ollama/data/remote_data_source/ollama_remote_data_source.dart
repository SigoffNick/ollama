import '../model/export_models.dart';
import '../request/requests_export.dart';

abstract class OlamaRemoteDataSource {
  Future<Stream> generateAnswer({
    required GenerateAnswerRequest request,
  });

  Future<OllamaFullAnswerModel> addAnswerToText({
    required GenerateAnswerRequest request,
  });
}
