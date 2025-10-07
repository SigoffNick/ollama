sealed class Message {
  final StringBuffer content;

  Message({
    required this.content,
  });
}

class UserMessage extends Message {
  UserMessage({
    required StringBuffer content,
  }) : super(content: content);
}

class AssistantMessage extends Message {
  AssistantMessage({
    required StringBuffer content,
  }) : super(content: content);
}

class ErrorMessage extends Message {
  ErrorMessage({
    required StringBuffer content,
  }) : super(content: content);
}

class AssistantLoadingMessage extends Message {
  AssistantLoadingMessage({
    required StringBuffer content,
  }) : super(content: content);
}
