import 'promptable.dart';

class CreateServiceTaskPrompt implements Promptable {
  final String preconditions;
  final String requirements;
  final String required;

  CreateServiceTaskPrompt.fromRequirements({
    required this.requirements,
  })  : preconditions = '',
        required = '''
        необходимо получить список конкретных значений для каждого запроса в формате json. Ключи такие: 
operations - список операции, обнаруженных в требованиях
ключи для каждой операции:
name - наименование операции
type - тип запроса (работа с базой данных - sql, reasapi выpов - rest)
metod - метод запроса (для restapi: get, post, put, delete; для базы данных: select, insert, update, delete) 
path - имя ручки
variable - переменная с данными
where - строка скрипта для фильтрации данных в get и select (успользовать для скрипта нотацию SQL)
errorVariable - имя переменной для ошибки
script - текстовая строка скрипта операции
variables:
inVariables - общий уникальный список входных переменных для операций
outVariables - общий уникальный список выходных переменных операций
problems - только список операций, по которой не удалось получить хотя бы одно значение ключа
notes - список других вопросов по требованиям с разбивкой по операциям
aiVariant - предложи свой вариант формулировки требований для сервисной задачи
Не добавляй в код лишних символов или комментариев, только json.
Пример json: 
{
  "operations": [
    {
      "name": "Обновить позицию документа",
      "type": "sql",
      "metod": "UPDATE",
      "path": null,
      "variable": "document",
      "where": "WHERE document.id = {documentId}",
      "errorVariable": "error",
      "script": "error = sql(method: UPDATE, variable: document, name: 'Обновить позицию документа', where = WHERE document.id = {documentId})"
    },
    {
      "name": "Очистить переменную documentPosition",
      "type": "script",
      "metod": null,
      "path": null,
      "variable": "documentPosition",
      "where": null,
      "errorVariable": null,
      "script": "documentPosition = null"
    }
  ],
  "variables": {
    "inVariables": ["document", "documentPosition"],
    "outVariables": ["document", "error"]
  },
  "problems": [
    {
      "operationIndex": 1,
      "description": "Операция 'Очистить переменную documentPosition' не соответствует типу запроса (sql/rest). Действие с переменной не может быть классифицировано как SQL-запрос или REST-вызов."
    }
  ],
  "notes": [
    {
      "operationIndex": 0,
      "description": "Не указано условие WHERE для идентификации документа при обновлении. Рекомендуется явно указать условие, например, document.id = {documentId}, чтобы избежать обновления всех записей."
    },
    {
      "operationIndex": 1,
      "description": "Очистка переменной documentPosition реализована как прямое присвоение null. В контексте задачи это допустимо, но не соответствует формату запроса, указанному в требованиях."
    }
  ],
  "aiVariant": "Требуется: 1) Обновить данные в таблице документов (document) с использованием значений из переменной documentPosition. Условие обновления — идентификатор документа (document.id). 2) Очистить содержимое переменной documentPosition после успешного обновления. Рекомендуется явно указать условие WHERE в SQL-запросе и использовать отдельный шаг для очистки переменной."
}

''';

  @override
  String createPrompt() {
    return '''Предусловия:
    $preconditions
    Требования к сервисной задаче:
    $requirements
    Необходимо:
    $required   
 ''';
  }
}
