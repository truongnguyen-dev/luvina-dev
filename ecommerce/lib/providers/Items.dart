import 'dart:collection';
import 'dart:convert';
import 'dart:math';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/models/test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'package:provider/provider.dart';

class ItemProvider with ChangeNotifier {
  List<Item> _items = [];
  List<Item> _recommendations = [];
  List<Item> get items => _items;
  List<Item> get recommendations => _recommendations;

  Future<String> getJson() {
    return rootBundle.loadString('db/products.json');
  }

  Future getItems() async {
    final d = await rootBundle.loadString('db/products.json');
    final data = json.decode(d);
      _items = Item.fromJsonList(data['items']);
    notifyListeners();
  }

  Future getRecommendations(int selfId) async {
    var rng = Random();
    for (var i = 0; i < _items.length; i++) {
      int r = rng.nextInt(_items.length);
      var con1 = _items[r].id != selfId;
        if (con1) {
          _recommendations.add(_items[r]);
        }
      _recommendations = LinkedHashSet<Item>.from(_recommendations).toList();

    }
    notifyListeners();
  }
}