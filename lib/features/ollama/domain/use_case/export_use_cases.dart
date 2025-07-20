import 'package:ollama/features/ollama/domain/repository/export_repositories.dart';
import 'package:ollama/features/ollama/domain/use_case/use_case.dart';

class Fetch implements FutureUseCase<NoParams, void> {
  final OlamaRepository _olamaRepository;

  Fetch({
    required OlamaRepository olamaRepository,
  }) : _olamaRepository = olamaRepository;

  @override
  Future<void> execute(NoParams input) async {
    return _olamaRepository.fetch();
  }
}
