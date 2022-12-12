import 'dart:convert';
import 'logic.dart';

Map<String, dynamic> resModel = jsonDecode(utf8.decode(res.bodyBytes));

String nameCoin = resModel['name'];
String valueCoin = resModel['tickers']['last'];
