import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:pictures_feed/data/model/like.dart';
import 'package:pictures_feed/data/model/picture.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_bloc.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_event.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_state.dart';
import 'package:pictures_feed/presentation/widget/fetch_failure_widget.dart';
import 'package:pictures_feed/presentation/widget/greetings_widget.dart';
import 'package:pictures_feed/presentation/widget/picture_card_widget.dart';
import 'package:provider/provider.dart';

class PicturesFeedPage extends StatefulWidget {
  @override
  _PicturesFeedPageState createState() => _PicturesFeedPageState();
}

class _PicturesFeedPageState extends State<PicturesFeedPage>
    with TickerProviderStateMixin {
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      context
          .read<PicturesRequestBloc>()
          .add(PicturesRequestEvent.paginate(picturesQuantity: 10));
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: _buildAppBar(),
      body: ListView(controller: _scrollController, children: [
        GreetingsWidget(),
        BlocBuilder<PicturesRequestBloc, PicturesRequestState>(
            builder: (BuildContext context, PicturesRequestState state) =>
                state.when(
                  idle: () => SizedBox.shrink(),
                  fetchInProgress: _buildFetchInProgress,
                  fetchSuccess: _buildFetchSuccess,
                  fetchFailure: () => _buildFetchFailure(context),
                ))
      ]));

  Widget _buildFetchInProgress() => Center(child: CircularProgressIndicator());

  Widget _buildFetchSuccess(List<Picture> data, int _) {
    context.read<Like>().add(data);
    return WallLayout(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      stones: _buildStonesList(data),
      reverse: false,
      layersCount: 2,
    );
  }

  FetchFailureWidget _buildFetchFailure(
          BuildContext context) =>
      FetchFailureWidget(
          updateTap: () => context
              .read<PicturesRequestBloc>()
              .add(PicturesRequestEvent.fetch(picturesQuantity: 10)));

  List<Stone> _buildStonesList(List<Picture> data) {
    return data.map((it) {
      final index = data.indexOf(it);
      return Stone(
        id: index,
        width: it.width,
        height: it.height,
        child: PictureCardWidget(
            pictureUrl: it.pictureUrl, authorName: it.authorName, index: index),
      );
    }).toList();
  }

  Widget _buildAppBar() => PreferredSize(
      preferredSize: Size.zero,
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
      ));
}
