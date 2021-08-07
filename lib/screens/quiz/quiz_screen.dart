import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_fcb/constants.dart';
import 'package:quiz_fcb/controllers/question_controller.dart';
import 'package:quiz_fcb/screens/components/progress_bar.dart';
import 'package:quiz_fcb/screens/components/question_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _questionController = Get.put(QuestionController());
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: ProgressBar(),
                ),
                SizedBox(height: kDefaultPadding),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: RichText(
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
                ),
                Divider(
                  thickness: 1.5,
                ),
                SizedBox(height: kDefaultPadding),
                Expanded(
                  child: PageView.builder(
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
