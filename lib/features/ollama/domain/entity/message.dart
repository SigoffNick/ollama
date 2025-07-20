abstract class Message {
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