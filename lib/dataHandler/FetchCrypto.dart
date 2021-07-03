import 'package:stockup/keys/ApiKeys.dart' as ApiKey;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getQuotes(String symbol) async {
  var getUri =
      'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest' +
          '?symbol=' +
          symbol;

  final _response = await http.get(Uri.parse(getUri), headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-CMC_PRO_API_KEY': ApiKey.cryptoApi,
  });

  if (_response.statusCode == 200) {
    Map<String, dynamic> map = json.decode(_response.body);
    List<dynamic> data = map["data"];
    return data;
  } else {
    throw Exception("Failed to load data");
  }
}
