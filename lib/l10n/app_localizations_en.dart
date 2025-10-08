// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'AI Chat';

  @override
  String get problems => 'Problems';

  @override
  String get questions => 'Questions';

  @override
  String get json => 'Json';

  @override
  String get thinking => 'Thinking';

  @override
  String get copyToClipboard => 'Copy to clipboard';

  @override
  String get jsonCopied => 'JSON copied to clipboard';

  @override
  String operationJsonCopied(int number) {
    return 'Operation $number JSON copied to clipboard';
  }

  @override
  String get failedToCopyJson => 'Failed to copy JSON';

  @override
  String get noProblemsFound => 'No problems found';

  @override
  String get initialState => 'Initial State';

  @override
  String get loading => 'Loading...';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String problemNumber(int number) {
    return 'Problem $number';
  }

  @override
  String operationNumber(int number) {
    return 'Operation $number';
  }

  @override
  String get responseTab => 'Response';

  @override
  String get chatTab => 'Chat';

  @override
  String get settingsTab => 'Settings';

  @override
  String get historyTab => 'History';

  @override
  String get send => 'Send';

  @override
  String get typeMessage => 'Type your message...';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get save => 'Save';

  @override
  String get clear => 'Clear';

  @override
  String get clearAll => 'Clear All';

  @override
  String get confirm => 'Confirm';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get ok => 'OK';

  @override
  String get close => 'Close';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get previous => 'Previous';

  @override
  String get search => 'Search';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Sort';

  @override
  String get refresh => 'Refresh';

  @override
  String get share => 'Share';

  @override
  String get export => 'Export';

  @override
  String get import => 'Import';

  @override
  String get settings => 'Settings';

  @override
  String get about => 'About';

  @override
  String get help => 'Help';

  @override
  String get feedback => 'Feedback';

  @override
  String get version => 'Version';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get systemMode => 'System Mode';

  @override
  String get networkError => 'Network connection error';

  @override
  String get serverError => 'Server error occurred';

  @override
  String get unknownError => 'An unknown error occurred';

  @override
  String get connectionTimeout => 'Connection timeout';

  @override
  String get requestCancelled => 'Request was cancelled';

  @override
  String get noInternet => 'No internet connection';

  @override
  String get tryAgain => 'Try again';

  @override
  String get emptyState => 'No data available';

  @override
  String get noResults => 'No results found';

  @override
  String get searchResults => 'Search results';

  @override
  String get recentChats => 'Recent chats';

  @override
  String get newChat => 'New chat';

  @override
  String get chatHistory => 'Chat history';

  @override
  String get clearHistory => 'Clear history';

  @override
  String get deleteChat => 'Delete chat';

  @override
  String get renameChat => 'Rename chat';

  @override
  String get copyMessage => 'Copy message';

  @override
  String get regenerateResponse => 'Regenerate response';

  @override
  String get stopGeneration => 'Stop generation';

  @override
  String get model => 'Model';

  @override
  String get selectModel => 'Select model';

  @override
  String get temperature => 'Temperature';

  @override
  String get maxTokens => 'Max tokens';

  @override
  String get topP => 'Top P';

  @override
  String get frequencyPenalty => 'Frequency penalty';

  @override
  String get presencePenalty => 'Presence penalty';

  @override
  String get systemPrompt => 'System prompt';

  @override
  String get userMessage => 'User message';

  @override
  String get assistantMessage => 'Assistant message';

  @override
  String get timestamp => 'Timestamp';

  @override
  String get tokens => 'Tokens';

  @override
  String get cost => 'Cost';

  @override
  String get duration => 'Duration';

  @override
  String get processing => 'Processing...';

  @override
  String get generating => 'Generating response...';

  @override
  String get analyzing => 'Analyzing...';

  @override
  String get completed => 'Completed';

  @override
  String get failed => 'Failed';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get paused => 'Paused';

  @override
  String get resumed => 'Resumed';
}
