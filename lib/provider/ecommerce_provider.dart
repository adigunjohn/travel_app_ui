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
    GridWidget(text: 'NFT Anime 800', textt: '\$159.0',),
  ];



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