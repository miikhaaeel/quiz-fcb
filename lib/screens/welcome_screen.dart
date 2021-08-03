import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset(
            "assets/icons/bg.svg",
            fit: BoxFit.contain,
            width: double.infinity,
            height: double.infinity,

          ),
        ],
      ),
    );
  }
}
