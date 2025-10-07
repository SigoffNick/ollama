import '../model/export_models.dart';
import '../request/requests_export.dart';

abstract class OlamaRemoteDataSource {
  Future<Stream> generateAnswerAsStream({
    required GenerateAnswerRequest request,
  });

  Future<OllamaFullAnswerModel> generateAnswerAsString({
    required GenerateAnswerRequest request,
  });
}
