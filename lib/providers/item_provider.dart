import 'package:flutter/foundation.dart';
import 'package:minimal_shop/models/item.dart';

class ItemProvider extends ChangeNotifier {
  final List<Item> _itemList = [
    Item(
      id: 1,
      title: 'PRODUCT 1',
      image:
          'https://images.pexels.com/photos/9979199/pexels-photo-9979199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 99.99,
    ),
    Item(
      id: 2,
      title: 'PRODUCT 2',
      image:
          'https://images.pexels.com/photos/1598505/pexels-photo-1598505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 99.99,
    ),
    Item(
      id: 3,
      title: 'PRODUCT 3',
      image:
          'https://images.pexels.com/photos/701877/pexels-photo-701877.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      price: 99.99,
    ),
    Item(
      id: 4,
      title: 'PRODUCT 4',
      image:
          'https://images.unsplash.com/photo-1579572331145-5e53b299c64e?auto=format&fit=crop&q=80&w=1960&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 99.99,
    ),
  ];

  final List<Item> _cartList = [];

  List<Item> get cartList {
    return _cartList;
  }

  List<Item> get itemList {
    return [..._itemList];
  }

  void addToCart(Item item) {
    _cartList.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _cartList.removeAt(index);
    notifyListeners();
  }
}
