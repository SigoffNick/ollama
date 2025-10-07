import 'dart:convert';

class ApiRequest {
  final String endpoint;
  final Map<String, dynamic>? params;
  final Map<String, dynamic>? body;
  final String? data;

  const ApiRequest({
    required this.endpoint,
    required this.body,
    required this.params,
    this.data,
  });

  String get jsonEncodedBody => jsonEncode(body);

  String get path {
    return endpoint;
  }

  String get getData {
    return data ?? jsonEncodedBody;
  }
}
