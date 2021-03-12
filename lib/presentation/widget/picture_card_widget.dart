import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:pictures_feed/presentation/page/picture_view_page.dart';
import 'package:pictures_feed/presentation/util/constant/strings.dart';
import 'package:pictures_feed/presentation/widget/like_button_widget.dart';

class PictureCardWidget extends StatefulWidget {
  const PictureCardWidget({
    Key key,
    @required this.pictureUrl,
    @required this.authorName,
    @required this.index,
  }) : super(key: key);

  final String pictureUrl;
  final String authorName;
  final int index;

  @override
  _PictureCardWidgetState createState() => _PictureCardWidgetState();
}

class _PictureCardWidgetState extends State<PictureCardWidget>
    with TickerProviderStateMixin {
  AnimationController _animController;

  @override
  void initState() {
    _animController =
        AnimationController(duration: Duration(milliseconds: 900), vsync: this);
    _animController.forward(from: 0);
    super.initState();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ScaleTransition(
      scale: Tween(
        begin: 0.8,
        end: 1.0,
      ).animate(
          CurvedAnimation(parent: _animController, curve: Curves.elasticOut)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: OpenContainer(
            useRootNavigator: true,
            routeSettings: RouteSettings(name: Strings.pictureViewPage),
            closedBuilder: (context, action) => Stack(
              children: [
                Positioned.fill(
                  child: _buildNetworkImage(widget.pictureUrl),
                ),
                _buildLikeButton(widget.index)
              ],
            ),
            openBuilder: (_, action) => PictureViewPage(
                pictureUrl: widget.pictureUrl,
                authorName: widget.authorName,
                pictureIndex: widget.index),
          )));

  Image _buildNetworkImage(String pictureUrl) {
    return Image.network(
      pictureUrl,
      frameBuilder: (_, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded ?? false) {
          return child;
        }
        return AnimatedOpacity(
          child: child,
          opacity: frame == null ? 0 : 1,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOut,
        );
      },
      filterQuality: FilterQuality.none,
      fit: BoxFit.cover,
    );
  }

  Positioned _buildLikeButton(int index) => Positioned(
        left: 8.0,
        bottom: 8.0,
        child: LikeButtonWidget(pictureIndex: index),
      );
}
