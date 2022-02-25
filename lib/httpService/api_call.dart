import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'api_model.dart';

class ApiCall {
  final apiUrl = 'https://jsonplaceholder.typicode.com/todos';

  fetchTodos() async {
    final response = await http.get(Uri.parse(apiUrl));
    var _decodedResponses = convert.jsonDecode(response.body) as List;
    List<Todos> _todos =
        List<Todos>.generate(_decodedResponses.length, (index) {
      return Todos.fromJson(_decodedResponses[index]);
    });
    if (response.statusCode == 200) {
      return _todos;
    } else {
      throw Exception('Failed to load Todos');
    }
  }
}
