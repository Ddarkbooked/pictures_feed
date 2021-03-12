import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pictures_feed/presentation/widget/like_button_widget.dart';

class PictureViewPage extends StatefulWidget {
  final String pictureUrl;
  final String authorName;
  final int pictureIndex;

  const PictureViewPage({
    this.pictureUrl,
    this.authorName,
    this.pictureIndex,
    Key key,
  }) : super(key: key);

  @override
  _PictureViewPageState createState() => _PictureViewPageState();
}

class _PictureViewPageState extends State<PictureViewPage> {
  bool _isTapped;

  @override
  void initState() {
    _isTapped = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Stack(children: [
        GestureDetector(
            onTap: () => setState(() => _isTapped = !_isTapped),
            child: PhotoView(
                imageProvider: NetworkImage(
              widget.pictureUrl,
            ))),
        _isTapped
            ? _buildWidgetUnhider(child: _buildStackedAppBar())
            : _buildWidgetHider(child: _buildStackedAppBar()),
        _isTapped
            ? Positioned(
                left: 16.0,
                bottom: 16.0,
                child: _buildWidgetUnhider(
                    child: LikeButtonWidget(
                  pictureIndex: widget.pictureIndex,
                  backgroundColor: Colors.grey[850],
                )))
            : Positioned(
                left: 16.0,
                bottom: 16.0,
                child: _buildWidgetHider(
                    child: LikeButtonWidget(
                  pictureIndex: widget.pictureIndex,
                  backgroundColor: Colors.grey[850],
                ))),
      ]);

  Widget _buildWidgetHider({int animDuration = 250, @required Widget child}) {
    Future.delayed(
        Duration(milliseconds: animDuration),
        () =>
            SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]));
    return AnimatedOpacity(
        opacity: 0.0,
        duration: Duration(milliseconds: animDuration),
        child: child);
  }

  Widget _buildWidgetUnhider({int animDuration = 250, @required Widget child}) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return AnimatedOpacity(
        opacity: 1.0,
        duration: Duration(milliseconds: animDuration),
        child: child);
  }

  Container _buildStackedAppBar() => Container(
        height: kToolbarHeight + MediaQuery.of(context).padding.top,
        child: AppBar(
            title: Text('Author: ${widget.authorName}'),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context))),
      );
}
