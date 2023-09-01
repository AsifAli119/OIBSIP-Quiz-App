import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quizapp/controllers/question_controllers.dart';

import '../colors.dart';
class Options extends StatelessWidget {
  const Options({
    super.key,
    required this.text,
    required this.index,
    required this.press,
  });
final String text;
final int index;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionControllers>(
      init: QuestionControllers(),
      builder: (qnController) {
        Color getTheRightColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns) {
              return GreenColor;
            } else if (index == qnController.selectedAns && qnController.selectedAns != qnController.correctAns) {
              return Colors.red;
            }
          }
          return GrayColor;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: cDefaultPadding),
            padding: EdgeInsets.all(cDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: getTheRightColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${index + 1} $text", style: TextStyle(color: getTheRightColor(), fontSize: 12),),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == GrayColor ? Colors.transparent: getTheRightColor(),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: getTheRightColor()),
                  ),
                  child: Icon(getTheRightColor() == Colors.red ?Icons.close: Icons.done, size: 16,),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}