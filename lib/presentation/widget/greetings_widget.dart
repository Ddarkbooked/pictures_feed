import 'package:flutter/material.dart';
import 'package:pictures_feed/presentation/util/constants/strings.dart';

class GreetingsWidget extends StatefulWidget {
  @override
  _GreetingsWidgetState createState() => _GreetingsWidgetState();
}

class _GreetingsWidgetState extends State<GreetingsWidget>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _fadeIn;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeIn,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 200),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                Strings.appTitle,
                style: TextStyle(color: Colors.grey[800], fontSize: 32),
              ),
              Text(
                Strings.createdGreetings,
                style: TextStyle(color: Colors.grey[900], fontSize: 16),
              ),
              Text(
                Strings.frameworkGreetings,
                style: TextStyle(color: Colors.grey[900], fontSize: 16),
              )
            ],
          )),
    );
  }
}
