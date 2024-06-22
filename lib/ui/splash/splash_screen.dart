import 'dart:async';

import 'package:e_commerce/ui/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

class Spalsh_Screen extends StatelessWidget {
  const Spalsh_Screen({super.key});

  static const String RouteName = '/splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Colors_App.mainColor,
        body: Center(
      child: ImageAnimationWidget(),
    ));
  }
}

class ImageAnimationWidget extends StatefulWidget {
  @override
  _ImageAnimationWidgetState createState() => _ImageAnimationWidgetState();
}

class _ImageAnimationWidgetState extends State<ImageAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration:
          Duration(seconds: 2), // Adjust the duration as per your preference
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.stop();
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
    });

    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.scale(
          scale: _animation.value,
          child: Image.asset(
            'assets/images/app_logo.png',
            width: 400,
            height: 200,
          ),
        );
      },
    );
  }
}
