import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class L10n {
  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return AppLocalizations.of(context);
  }
}

extension LocalizationExtension on BuildContext {
  AppLocalizations get l10n => L10n.of(this);

  // Existing strings
  String get appTitle => l10n.appTitle;
  String get problems => l10n.problems;
  String get questions => l10n.questions;
  String get json => l10n.json;
  String get thinking => l10n.thinking;
  String get copyToClipboard => l10n.copyToClipboard;
  String get jsonCopied => l10n.jsonCopied;
  String get failedToCopyJson => l10n.failedToCopyJson;
  String get noProblemsFound => l10n.noProblemsFound;
  String get initialState => l10n.initialState;
  String get loading => l10n.loading;

  // Common UI strings
  String get send => l10n.send;
  String get cancel => l10n.cancel;
  String get retry => l10n.retry;
  String get ok => l10n.ok;
  String get close => l10n.close;
  String get settings => l10n.settings;

  // Methods with parameters
  String error(String message) => l10n.error(message);
  String problemNumber(int number) => l10n.problemNumber(number);
  String operationNumber(int number) => l10n.operationNumber(number);
  String operationJsonCopied(int number) => l10n.operationJsonCopied(number);
}