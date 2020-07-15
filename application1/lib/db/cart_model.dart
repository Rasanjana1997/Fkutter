import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'tiledata.dart';

class CartModel extends ChangeNotifier{
  final List<String> itemIds = [];

  void add(String id){
    itemIds.add(id);
    notifyListeners();
  }


}