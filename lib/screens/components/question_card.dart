import 'package:flutter/material.dart';
import 'package:quiz_fcb/constants.dart';
import 'package:quiz_fcb/models/Questions.dart';
import 'package:quiz_fcb/screens/components/option_card.dart';

class QuestionCard extends StatelessWidget {
  final Question question;

  QuestionCard({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          bottom: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
           question.question!,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 2),
          OptionCard(),
          OptionCard(),
          OptionCard(),
          OptionCard(),
        ],
      ),
    );
  }
}
