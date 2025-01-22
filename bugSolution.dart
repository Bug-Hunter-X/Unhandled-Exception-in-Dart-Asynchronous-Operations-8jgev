```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final name = jsonData['name'];
      print('Name: $name');
    } else {
      // Log detailed error information
      print('Error: HTTP request failed with status code ${response.statusCode}. Response body: ${response.body}');
      throw Exception('HTTP request failed. Status code: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON decoding errors
    print('Error: Invalid JSON format. Details: $e');
    rethrow;
  } on SocketException catch (e) {
    // Handle network errors specifically
    print('Error: Network error. Details: $e');
    rethrow;
  } catch (e) {
    // Handle other potential exceptions
    print('Error: An unexpected error occurred. Details: $e');
    rethrow;
  }
}
```