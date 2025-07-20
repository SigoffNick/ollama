enum Flavor {
  prod,
  dev,
}

class AppConfig {
  final Flavor flavor;
  final String baseUrl;
  final String stgUrl;

  AppConfig({
    required this.flavor,
    required this.baseUrl,
    required this.stgUrl,
  });

  bool get isDev => flavor == Flavor.dev;

  factory AppConfig.fromFlavor(Flavor flavor) {
    String baseUrl;
    String stgUrl;
    switch (flavor) {
      case Flavor.prod:
      case Flavor.dev:
        baseUrl = 'http://localhost:11434';
        stgUrl = 'http://localhost:11434';
        break;
    }

    return AppConfig(
      flavor: flavor,
      baseUrl: baseUrl,
      stgUrl: stgUrl,
    );
  }
}
