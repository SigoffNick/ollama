class Env {
  static String get sentryDsn => const String.fromEnvironment('SENTRY_DSN');
  static String get flavor => const String.fromEnvironment('FLUTTER_APP_FLAVOR');
  static String get webFlavor => const String.fromEnvironment('WEB_FLAVOR');
  static String get baseUrl => const String.fromEnvironment('BASE_URL');
}