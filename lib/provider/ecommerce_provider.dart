import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:travel_app_ui/ecommerce_ui.dart';
import 'package:travel_app_ui/firstscreen.dart';
import 'package:travel_app_ui/secondscreen.dart';

class EcommerceUiModel extends ChangeNotifier {
  List<GridWidget> _gridList = [
    GridWidget(text: 'NFT Ape 100', textt: '\$45.0',),
    GridWidget(text: 'NFT Mammal 200', textt: '\$400.0',),
    GridWidget(text: 'NFT Rat 300', textt: '\$95.0',),
    GridWidget(text: 'NFT Metaverse 400', textt: '\$80.0',),
    GridWidget(text: 'NFT Aves 500', textt: '\$450.0',),
    GridWidget(text: 'NFT Bird 600', textt: '\$105.0',),
    GridWidget(text: 'NFT Reptiles 700', textt: '\$20.0',),
  ];

  List<GridWidget> _gridListt = [
    GridWidget(text: 'Crypto Ape 100', textt: '\$45.0',),
    GridWidget(text: 'Crypto Mammal 200', textt: '\$400.0',),
    GridWidget(text: 'Crypto Rat 300', textt: '\$95.0',),
    GridWidget(text: 'Crypto Metaverse 400', textt: '\$80.0',),
    GridWidget(text: 'Crypto Aves 500', textt: '\$450.0',),
    GridWidget(text: 'Crypto Bird 600', textt: '\$105.0',),
    GridWidget(text: 'Crypto Reptiles 700', textt: '\$20.0',),
  ];
  UnmodifiableListView<GridWidget> get gridListt {
    return UnmodifiableListView(_gridListt);
  }
  int get gridListCountt {
    return _gridListt.length;
  }


  List<ListWidget> _listList = [
    ListWidget(text: 'All'),
    ListWidget(text: 'Formal'),
    ListWidget(text: 'Informal'),
    ListWidget(text: 'Jumping'),
    ListWidget(text: 'Running'),
    ListWidget(text: 'Gym'),
    ListWidget(text: 'Party'),
    ListWidget(text: 'Suit'),
  ];

  UnmodifiableListView<GridWidget> get gridList {
    return UnmodifiableListView(_gridList);
  }
  int get gridListCount {
    return _gridList.length;
  }
 UnmodifiableListView<ListWidget> get listList{
    return UnmodifiableListView(_listList);
 }
 int get listListCount {
    return _listList.length;
 }

}