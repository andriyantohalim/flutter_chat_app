import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_chat_app/viewmodels/chat_viewmodel.dart';

class ChatView extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat with AI')),
      body: GestureDetector(
        onTap: () {
          // Dismiss the keyboard when tapping outside the TextField
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Consumer<ChatViewModel>(
                builder: (context, viewModel, child) {
                  return ListView.builder(
                    itemCount: viewModel.messages.length,
                    itemBuilder: (context, index) {
                      final message = viewModel.messages[index];
                      return Align(
                        alignment: message.isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: message.isUser ? Colors.blue : Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            message.content,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(hintText: 'Type your message'),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      final text = _controller.text;
                      if (text.isNotEmpty) {
                        Provider.of<ChatViewModel>(context, listen: false)
                            .sendMessage(text);
                        _controller.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}