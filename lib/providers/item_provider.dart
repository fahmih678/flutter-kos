import 'dart:convert';

import 'package:bwa_cozy/models/item.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ItemProvider extends ChangeNotifier{
  getRecommendedItems() async{
    // menampilkan hasil dari request http
    var url = Uri.parse('http://bwa-cozy.herokuapp.com/recommended-spaces');
    final response = await http.get(url);

    if (response.statusCode == 200){
      List data = jsonDecode(response.body);
      // print(data);
      List<Item> items = data.map((item) => Item.fromJson(item)).toList();
      // print(items);
      return items;
    } else {
      return <Item>[];
    }
  }  
}



// Future<List<Item>> fetchData(http.Client client) async {
//   final response = await client.get(Uri.parse('http://bwa-cozy.herokuapp.com/recommended-spaces'));
//   

// List<Item> parseData(String responseBody) {
//   final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

//   return parsed.map<Item>((item) => Item.fromJson(item)).toList();
// }