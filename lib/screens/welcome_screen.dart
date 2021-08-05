import 'package:flutter/material.dart';
import 'package:quiz_fcb/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg",
              fit: BoxFit.fill, width: double.maxFinite),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex: 2),
                  Text(
                    "Let's Play Quiz",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text('Enter your informations below'),
                  Spacer(),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF1c2341),
                        hintText: 'Full Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          )),
                      child: Text(
                        'Start Quiz',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  Spacer(flex: 2)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


// Container(
 //   decoration: BoxDecoration(
 //     image: DecorationImage(
//       image: AssetImage("assets/images/man.jpg"),
          //       fit: BoxFit.cover,
          //     ),
