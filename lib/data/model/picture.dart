import 'package:flutter/material.dart';

@immutable
class Picture {
  final String authorName;
  final String pictureUrl;
  final int width;
  final int height;

  Picture(
      {@required this.authorName,
      @required this.width,
      @required this.pictureUrl,
      @required this.height});
}
