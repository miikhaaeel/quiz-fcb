import 'package:flutter/material.dart';
import 'package:quiz_fcb/constants.dart';
import 'package:quiz_fcb/models/Questions.dart';
import 'package:quiz_fcb/screens/components/progress_bar.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: Theme.of(context).textTheme.button,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          WebsafeSvg.asset(
            "assets/icons/bg.svg",
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  ProgressBar(),
                  SizedBox(height: kDefaultPadding),
                  RichText(
                    text: TextSpan(
                      text: 'Question 1',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: '/10',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Text(
                          sample_data[0]['question'],
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kBlackColor),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: kDefaultPadding),
                          padding: EdgeInsets.all(kDefaultPadding),
                          decoration: BoxDecoration(
                            border: Border.all(color: kGrayColor),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
