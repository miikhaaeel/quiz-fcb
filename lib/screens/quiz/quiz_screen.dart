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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        QuestionCard(),
                        OptionCard()
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

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      sample_data[0]['question'],
      style: Theme.of(context)
          .textTheme
          .headline6!
          .copyWith(color: kBlackColor),
    );
  }
}

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1. Test',
            style: TextStyle(
              color: kGrayColor,
              fontSize: 16,
            ),
          ),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              border: Border.all(color: kGrayColor),
              borderRadius: BorderRadius.circular(50),
            ),
          )
        ],
      ),
    );
  }
}
