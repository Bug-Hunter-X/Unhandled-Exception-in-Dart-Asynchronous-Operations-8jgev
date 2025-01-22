```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Success, parse the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data, for example
      final name = jsonData['name'];
      print('Name: $name');
    } else {
      // Handle error, for example throw an exception
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle potential exceptions during network request
    print('Error: $e');
    // Consider rethrowing the exception to be handled at a higher level
    rethrow; 
  }
}
```