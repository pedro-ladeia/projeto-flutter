import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_page/homepage.dart';

var res;

Future<List> getCoin() async {
  String nameCriptoChoiced = txtNameCripto.text;
  var url = Uri.parse(
      'https://api.coingecko.com/api/v3/coins/${nameCriptoChoiced}/tickers?exchange_ids=binance_us');
  res = await http.get(url);
  if (res.statusCode == 200) {
    return jsonDecode(utf8.decode(res.bodyBytes));
  } else {
    throw Exception('Error loading server data');
  }
}
