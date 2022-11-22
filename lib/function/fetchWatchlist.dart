import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watchlist.dart';

Future<List<Watchlist>> fetchWatchlist() async {
  print(">>> ini manggil fungsi fetchWatchlist");
  var url = Uri.parse("https://iqbal-tugas-2.herokuapp.com/mywatchlist/json/");
  var response = await http.get(url, headers: {
    "Access-Control-Allow-Origin": "*",
    "Content-Type": "application/json",
  });
  print(">>> response: ${response.body}");
  var data = jsonDecode(utf8.decode(response.bodyBytes));
  print(">>> data: $data");
  List<Watchlist> watchlist = [];
  for (var d in data) {
    if (d != null) {
      watchlist.add(Watchlist.fromJson(d));
    }
  }
  return watchlist;
}
