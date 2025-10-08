// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'ИИ Чат';

  @override
  String get problems => 'Проблемы';

  @override
  String get questions => 'Вопросы';

  @override
  String get json => 'Json';

  @override
  String get thinking => 'Размышления';

  @override
  String get copyToClipboard => 'Копировать в буфер';

  @override
  String get jsonCopied => 'JSON скопирован в буфер';

  @override
  String operationJsonCopied(int number) {
    return 'JSON операции $number скопирован в буфер';
  }

  @override
  String get failedToCopyJson => 'Не удалось скопировать JSON';

  @override
  String get noProblemsFound => 'Проблемы не найдены';

  @override
  String get initialState => 'Начальное состояние';

  @override
  String get loading => 'Загрузка...';

  @override
  String error(String message) {
    return 'Ошибка: $message';
  }

  @override
  String problemNumber(int number) {
    return 'Проблема $number';
  }

  @override
  String operationNumber(int number) {
    return 'Операция $number';
  }

  @override
  String get responseTab => 'Ответ';

  @override
  String get chatTab => 'Чат';

  @override
  String get settingsTab => 'Настройки';

  @override
  String get historyTab => 'История';

  @override
  String get send => 'Отправить';

  @override
  String get typeMessage => 'Введите сообщение...';

  @override
  String get retry => 'Повторить';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get edit => 'Редактировать';

  @override
  String get save => 'Сохранить';

  @override
  String get clear => 'Очистить';

  @override
  String get clearAll => 'Очистить всё';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get ok => 'ОК';

  @override
  String get close => 'Закрыть';

  @override
  String get back => 'Назад';

  @override
  String get next => 'Далее';

  @override
  String get previous => 'Предыдущий';

  @override
  String get search => 'Поиск';

  @override
  String get filter => 'Фильтр';

  @override
  String get sort => 'Сортировка';

  @override
  String get refresh => 'Обновить';

  @override
  String get share => 'Поделиться';

  @override
  String get export => 'Экспорт';

  @override
  String get import => 'Импорт';

  @override
  String get settings => 'Настройки';

  @override
  String get about => 'О программе';

  @override
  String get help => 'Помощь';

  @override
  String get feedback => 'Обратная связь';

  @override
  String get version => 'Версия';

  @override
  String get language => 'Язык';

  @override
  String get theme => 'Тема';

  @override
  String get darkMode => 'Тёмная тема';

  @override
  String get lightMode => 'Светлая тема';

  @override
  String get systemMode => 'Системная тема';

  @override
  String get networkError => 'Ошибка сетевого соединения';

  @override
  String get serverError => 'Произошла ошибка сервера';

  @override
  String get unknownError => 'Произошла неизвестная ошибка';

  @override
  String get connectionTimeout => 'Истекло время ожидания соединения';

  @override
  String get requestCancelled => 'Запрос был отменён';

  @override
  String get noInternet => 'Нет подключения к интернету';

  @override
  String get tryAgain => 'Попробовать снова';

  @override
  String get emptyState => 'Нет доступных данных';

  @override
  String get noResults => 'Результаты не найдены';

  @override
  String get searchResults => 'Результаты поиска';

  @override
  String get recentChats => 'Недавние чаты';

  @override
  String get newChat => 'Новый чат';

  @override
  String get chatHistory => 'История чатов';

  @override
  String get clearHistory => 'Очистить историю';

  @override
  String get deleteChat => 'Удалить чат';

  @override
  String get renameChat => 'Переименовать чат';

  @override
  String get copyMessage => 'Копировать сообщение';

  @override
  String get regenerateResponse => 'Сгенерировать ответ заново';

  @override
  String get stopGeneration => 'Остановить генерацию';

  @override
  String get model => 'Модель';

  @override
  String get selectModel => 'Выберите модель';

  @override
  String get temperature => 'Температура';

  @override
  String get maxTokens => 'Максимум токенов';

  @override
  String get topP => 'Top P';

  @override
  String get frequencyPenalty => 'Штраф за частоту';

  @override
  String get presencePenalty => 'Штраф за присутствие';

  @override
  String get systemPrompt => 'Системный промпт';

  @override
  String get userMessage => 'Сообщение пользователя';

  @override
  String get assistantMessage => 'Сообщение ассистента';

  @override
  String get timestamp => 'Время';

  @override
  String get tokens => 'Токены';

  @override
  String get cost => 'Стоимость';

  @override
  String get duration => 'Длительность';

  @override
  String get processing => 'Обработка...';

  @override
  String get generating => 'Генерация ответа...';

  @override
  String get analyzing => 'Анализ...';

  @override
  String get completed => 'Завершено';

  @override
  String get failed => 'Не удалось';

  @override
  String get cancelled => 'Отменено';

  @override
  String get paused => 'Приостановлено';

  @override
  String get resumed => 'Возобновлено';
}
