import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class OpenAIService {
  final String _apiKey = dotenv.env['OPENAI_API_KEY']!;
  final String _url = 'https://api.openai.com/v1/chat/completions';

  Future<String> getReply(String message) async {
    try {
      final response = await http.post(
        Uri.parse(_url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey'
        },
        body: jsonEncode({
          'model': 'gpt-3.5-turbo', // Ensure the model is correctly specified
          'messages': [
            {'role': 'user', 'content': message},
          ],
          'max_tokens': 50,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        return responseData['choices'][0]['message']['content'].trim();
      } else {
        print('Failed with status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        throw Exception('Failed to get reply from OpenAI');
      }
    } catch (e) {
      print('Error occurred: $e');
      throw Exception('Failed to get reply from OpenAI');
    }
  }
}