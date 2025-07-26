import '../../features/ollama/domain/entity/message.dart';

extension ListMessagesExtension on List<Message> {
  void removeAfterLoadingMessage() {
    if (isEmpty) {
      return;
    }

    final int lastIndex = lastIndexWhere(
      (Message message) => message is AssistantLoadingMessage,
    );

    if (lastIndex == -1) {
      return;
    }

    removeRange(lastIndex, length);
  }

  bool get endsWithErrorMessage {
    if (isEmpty) {
      return false;
    }

    return last is ErrorMessage;
  }

  bool get endsWithUserMessage {
    if (isEmpty) {
      return false;
    }

    return last is UserMessage;
  }
}
