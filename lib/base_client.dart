import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = 'http://10.0.2.2/api';

class BaseClient {
  var client = http.Client();

  //GET
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
    };

    var response = await client.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

}
