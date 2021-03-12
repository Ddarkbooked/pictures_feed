import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictures_feed/domain/observer.dart';

import 'domain/application.dart';

void main() => runZonedGuarded(() {
      Bloc.observer = Observer();
      runApp(Application());
    }, (err, st) {});
