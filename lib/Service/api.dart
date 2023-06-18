import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:plant/Models/tumbuhan.dart';

class APIstatic {
  static final _host = "http://10.10.12.208:80/api";
  static Future<List<Petanis>> getPetanis() async {
    try {
      final response = await http
          .get(Uri.parse("$_host/petanis"), headers: {'Authorization': ''});
      if (response.statusCode == 200) {
        //return data list
        var json = jsonDecode(response.body);
        final parsed = json['data'].cast<Map<String, dynamic>>();
        print('Tes');
        return parsed.map<Petanis>((json) => Petanis.fromJson(json)).toList();
      } else {
        //return null
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
