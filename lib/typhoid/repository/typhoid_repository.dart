// typhoid_repository.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class TyphoidRepository {
  final String apiUrl = '';

  Future<bool> submitForm(Map<String, dynamic> fields) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(fields),
      );

      return response.statusCode == 200; // Assuming 200 is success
    } catch (e) {
      print('Error submitting form: $e');
      return false;
    }
  }
}
