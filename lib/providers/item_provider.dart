import 'dart:convert';

import 'package:bwa_cozy/models/item.dart';
import 'package:http/http.dart' as http;

Future<List<Item>> fetchData() async {
  try {
    final response = await http.get(
      Uri.parse('https://bwa-cozy.herokuapp.com/recommended-spaces'),
    );
    print(response.body);
    List data = jsonDecode(response.body);
    print('List $data');
    List<Item> items = data.map((e) => Item.fromJson(e)).toList();
    print('item $items');
    return items;
  } catch (e) {
    print('gagal');
    return <Item>[];
  }
}
