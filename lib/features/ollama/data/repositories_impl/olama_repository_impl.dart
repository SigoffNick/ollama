import '../../domain/repository/export_repositories.dart';
import '../remote_data_source/export_remote_data_sources.dart';

class OlamaRepositoryImpl implements OlamaRepository {
  final OlamaRemoteDataSource _olamaRemoteDataSource;

  OlamaRepositoryImpl({required OlamaRemoteDataSource olamaRemoteDataSource})
      : _olamaRemoteDataSource = olamaRemoteDataSource;

  @override
  Future<void> fetch() {
    return _olamaRemoteDataSource.fetch();
  }
}
