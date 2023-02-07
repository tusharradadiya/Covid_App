import 'dart:convert';

import 'package:covid_app/home/model/homemodel.dart';
import 'package:http/http.dart' as http;

class Api_http {

  Future<Homemodel?> coviddata(String con) async {
  String apilink =
      "https://covid-19-tracking.p.rapidapi.com/v1/$con?=&=";
    var response = await http.get(Uri.parse(apilink), headers: {
      "X-RapidAPI-Key": "c166082712mshb7213b2ae9b62ddp1eb544jsn26839b0f4ec8",
      "X-RapidAPI-Host": "covid-19-tracking.p.rapidapi.com"
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      Homemodel h1 = Homemodel.fromJson(json);

      return h1;
    }
    return null;
  }
}
