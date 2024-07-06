import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/message_model.dart';
import 'package:flutter_chat_app/services/openai_service.dart';

class ChatViewModel extends ChangeNotifier {
  final List<Message> _messages = [];
  final OpenAIService _openAIService = OpenAIService();

  List<Message> get messages => _messages;

  Future<void> sendMessage(String content) async {
    _messages.add(Message(content: content, isUser: true));
    notifyListeners();

    try {
      final reply = await _openAIService.getReply(content);
      _messages.add(Message(content: reply, isUser: false));
    } catch (e) {
      _messages.add(Message(content: 'Failed to get reply. Please try again.', isUser: false));
    }

    notifyListeners();
  }
}