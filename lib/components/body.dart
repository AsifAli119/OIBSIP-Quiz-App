import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizapp/colors.dart';
import 'package:quizapp/components/progress_bar.dart';
import 'package:quizapp/components/questions_card.dart';
import 'package:quizapp/controllers/question_controllers.dart';
import 'package:quizapp/models/questions.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionControllers _questionController = Get.put(QuestionControllers());
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(
                height: cDefaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
                child: Obx(()=>Text.rich(
                  TextSpan(
                    text: "Question ${_questionController.questionNumber}",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: SecondaryColor),
                    children: [
                      TextSpan(
                        text: "/${_questionController.questions.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: SecondaryColor),
                      )
                    ],
                  ),
                ),),
              ),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(
                height: cDefaultPadding,
              ),
              Expanded(
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNumber,
                    itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(question: _questionController.questions[index],),
              ),),
            ],
          ),
        )
      ],
    );
  }
}
