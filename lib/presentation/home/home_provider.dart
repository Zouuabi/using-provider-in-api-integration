import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// https://cat-fact.herokuapp.com/facts

class HomeProvider with ChangeNotifier {
  String f = 'iniit';
  bool isLoading = false;

  Future<void> getData() async {
    isLoading = true;
    notifyListeners();
    var response =
        await http.get(Uri.parse("https://cat-fact.herokuapp.com/facts"));
    var decodeResponse = response.body;
    f = decodeResponse;
    isLoading = false;
    notifyListeners();
  }
}
