import 'package:flutter/material.dart';
import 'package:quiz_fcb/constants.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({this.index, this.text, this.onPressed});

  final String? text;
  final int? index;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
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
              "${index} $text",
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
      ),
    );
  }
}
