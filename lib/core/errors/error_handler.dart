import 'package:dio/dio.dart';

import '../app_events/app_event_bus_interface.dart';

class ErrorHandler {
  final AppEventNotifier _eventNotifier;

  ErrorHandler({
    required AppEventNotifier eventNotifier,
  }) : _eventNotifier = eventNotifier;

  Future<Never> handleError(DioException error) async {
    final Response<dynamic>? response = error.response;

    if (response == null) {
      throw Exception('empty response');
    }

    if (error.type == DioExceptionType.connectionError) {
      throw Exception('no connection');
    }

    throw Exception(
      'Error: ${error.message}, '
      'Status Code: ${response.statusCode}',
    );
  }
}
