import 'package:flutter/material.dart';
import 'package:pictures_feed/data/model/picture.dart';

class Like extends ChangeNotifier {
  final Map<int, bool> _likeMap = {};

  Map<int, bool> get likeMap => _likeMap;

  void add(List<Picture> data) {
    data.forEach((it) {
      if (!_likeMap.containsKey(data.indexOf(it))) {
        _likeMap.addAll({data.indexOf(it): false});
      }
    });
  }

  void invertValue(int index) {
    _likeMap[index] = !_likeMap[index];
    notifyListeners();
  }
}
