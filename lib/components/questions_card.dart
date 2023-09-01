import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizapp/controllers/question_controllers.dart';

import '../colors.dart';
import '../models/questions.dart';
import 'body.dart';
import 'options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionControllers _controllers =Get.put(QuestionControllers());
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: cDefaultPadding),
        padding: EdgeInsets.all(cDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Text(
              question.questions,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: BlackColor),
            ),
            SizedBox(
              height: cDefaultPadding,
            ),
            ...List.generate(
                question.options.length,
                (index) => Options(
                    index: index, text: question.options[index],
                    press: ()=> _controllers.checkAns(question, index))
            )
          ],
        ),
      ),
    );
  }
}
