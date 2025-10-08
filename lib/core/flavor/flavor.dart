import 'package:flutter/foundation.dart';

import '../services/env.dart';

enum Flavor { dev, stg, prod }

Flavor getFlavor() {
  final String flavor = kIsWeb ? Env.webFlavor : Env.flavor;
  return switch (flavor) {
    'prod' => Flavor.prod,
    'stg' => Flavor.stg,
    'dev' => Flavor.dev,
    _ => throw UnsupportedError('Invalid flavor: $flavor'),
  };
}
