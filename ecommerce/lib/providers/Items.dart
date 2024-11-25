import 'dart:collection';
import 'dart:convert';
import 'dart:math';
import 'package:ecommerce/models/Item.dart';
import 'package:ecommerce/models/sorter.dart';
import 'package:ecommerce/models/test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'show rootBundle;
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ItemProvider with ChangeNotifier {
  List<Item> _items = [];
  List<Item> _recommendations = [];
  List<Item> get items => _items;
  List<Item> get recommendations => _recommendations;

  // Sort have 4 value ("newest", "oldest", "lowest","highest",)
  List<Sorter> _sorts = [
    Sorter(name: "Newest registration", isSelected: true, value: 1),
    Sorter(name: "Oldest registration", isSelected: false, value: 2),
    Sorter(name: "Highest price first", isSelected: false, value: 3),
    Sorter(name: "Lowest price first", isSelected: false, value: 4),
  ];
  List<Sorter> get sorts => _sorts;

  Future getJson() {
    return rootBundle.loadString('db/products.json');
  }

  Future getItems() async {
    final d = await rootBundle.loadString('db/products.json');
    final data = json.decode(d);
      _items = Item.fromJsonList(data['items']);
    newest();
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

  void oldest () => _items.sort((a, b) => a.createdDate.compareTo(b.createdDate));
  
  void newest () => _items.sort((a, b) => b.createdDate.compareTo(a.createdDate));
  
  void highest () {
    _items.sort((a, b) {
    if (a.minPrice != b.minPrice) {
      return a.minPrice.toInt() - b.minPrice.toInt();
    }  else {
      return a.createdDate.compareTo(b.createdDate);
    }
    });
  }

  void lowest () {
    _items.sort((a, b) {
    if (a.minPrice != b.minPrice) {
      return b.minPrice.toInt() - a.minPrice.toInt();
    }  else {
      return a.createdDate.compareTo(b.createdDate);
    }
    });
  }

  void reSort (Sorter sorter) {
    int oldI = _sorts.indexWhere((e) => e.isSelected == true);
    int newI = _sorts.indexWhere((e) => e.value == sorter.value);
  
    _sorts[oldI].isSelected = false;
    _sorts[newI].isSelected = true;

    switch (sorter.value) {
      case 1:
        newest();
        break;
      case 2: 
        oldest();
        break;
      case 3: 
        lowest();
        break;
      case 4: 
        highest();
        break;
    }

      notifyListeners();
  }
}