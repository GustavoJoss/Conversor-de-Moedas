import 'package:http/http.dart' as http;
import 'dart:convert';
const String apiKey = "569c199c";
const String baseUrl = "https://api.hgbrasil.com/finance?formate=json";

String getRequestUrl() {
  return "$baseUrl&key=$apiKey";
}

Future<Map<String, dynamic>> getData() async {
  String requestUrl = getRequestUrl();
  http.Response response = await http.get(Uri.parse(requestUrl));
  return json.decode(response.body);
}