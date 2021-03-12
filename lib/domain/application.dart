import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictures_feed/data/api/repository/pictures_data_repository.dart';
import 'package:pictures_feed/data/api/service/api_service.dart';
import 'package:pictures_feed/data/cache/pictures_cache.dart';
import 'package:pictures_feed/data/model/like.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_bloc.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_event.dart';
import 'package:pictures_feed/presentation/page/picture_view_page.dart';
import 'package:pictures_feed/presentation/page/pictures_feed_page.dart';
import 'package:pictures_feed/presentation/util/constants/strings.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider<Like>(
      create: (context) => Like(),
      child: MaterialApp(
        title: Strings.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
          appBarTheme: AppBarTheme(
            centerTitle: false,
            brightness: Brightness.dark,
            elevation: 0.0,
            backgroundColor: Colors.grey[850],
          ),
        ),
        routes: {
          Strings.picturesFeedPage: (context) =>
              BlocProvider<PicturesRequestBloc>(
                create: (_) => PicturesRequestBloc(PicturesDataRepository(
                    ApiService.create(), PicturesCache()))
                  ..add(PicturesRequestEvent.fetch(picturesQuantity: 10)),
                child: PicturesFeedPage(),
              ),
          Strings.pictureViewPage: (context) => PictureViewPage()
        },
      ));
}
