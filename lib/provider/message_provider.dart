import '/models/message_model.dart';

class MessagesProvider {
  List<Message> getMessages() {
    return [
      Message(
        sender: 'John Doe',
        content: 'Hello, how are you?',
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Message(
        sender: 'Jane Smith',
        content: 'Are you coming to the meeting?',
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Message(
        sender: 'Alex Johnson',
        content: 'Don’t forget the deadline!',
        imageUrl: 'https://via.placeholder.com/150',
      ),
      // Add more messages as needed
    ];
  }
}