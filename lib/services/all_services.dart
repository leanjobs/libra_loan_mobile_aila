import 'package:http/http.dart' as http;
import 'dart:convert';

class BookApiService {
  Future getAllBook() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/all-book'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
