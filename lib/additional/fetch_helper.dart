import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

import 'consts.dart';

class FetchHelper {
  Future<dynamic> getData() async {
    print('Request...');

    http.Response response = await http.get(Uri.parse(Consts.baseUrl));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      //print('Response:\n$body');
      return body;
    } else {
      print(response.statusCode);
    }
  }
}
