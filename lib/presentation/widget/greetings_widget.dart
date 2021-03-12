import 'package:flutter/material.dart';
import 'package:pictures_feed/presentation/util/constants/strings.dart';

class GreetingsWidget extends StatefulWidget {
  @override
  _GreetingsWidgetState createState() => _GreetingsWidgetState();
}

class _GreetingsWidgetState extends State<GreetingsWidget> {
  bool _isVisible;

  @override
  void initState() {
    _isVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _isVisible = true;
    return AnimatedOpacity(
      duration: Duration(seconds: 5),
      opacity: _isVisible ? 1.0 : 0.0,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 200),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                Strings.appTitle,
                style: TextStyle(color: Colors.grey[800], fontSize: 30),
              ),
              Text(
                Strings.createdGreetings,
                style: TextStyle(color: Colors.grey[900]),
              ),
              Text(
                Strings.frameworkGreetings,
                style: TextStyle(color: Colors.grey[900]),
              )
            ],
          )),
    );
  }
}
