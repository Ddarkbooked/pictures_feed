import 'package:flutter/material.dart';
import 'package:pictures_feed/data/model/like.dart';
import 'package:provider/provider.dart';

class LikeButtonWidget extends StatefulWidget {
  final Color backgroundColor;
  final Color unselectedIconColor;
  final Color selectedIconColor;
  final int pictureIndex;

  const LikeButtonWidget({
    this.backgroundColor = Colors.white,
    this.unselectedIconColor = Colors.grey,
    this.selectedIconColor = Colors.red,
    @required this.pictureIndex,
    Key key,
  }) : super(key: key);

  @override
  _LikeButtonWidgetState createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget>
    with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _initAnim();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.backgroundColor,
        ),
        child: Consumer<Like>(
          builder: (context, data, child) => IconButton(
              onPressed: () => _likeTap(data),
              iconSize: 26,
              color: Colors.grey[300],
              icon: ScaleTransition(
                scale: _animationController,
                child: Icon(
                  Icons.favorite,
                  color: data.likeMap[widget.pictureIndex]
                      ? widget.selectedIconColor
                      : widget.unselectedIconColor,
                ),
              )),
        ),
      );

  void _likeTap(Like data) {
    _animationController.forward().then((it) {
      _animationController.reverse();
    });
    data.invertValue(widget.pictureIndex);
  }

  void _initAnim() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 40),
        value: 1.0,
        lowerBound: 1.0,
        upperBound: 1.2);
  }
}
