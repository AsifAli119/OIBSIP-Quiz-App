import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizapp/components/body.dart';
import 'package:quizapp/controllers/question_controllers.dart';
QuestionControllers _controller = Get.put(QuestionControllers());
class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2341),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: _controller.nextQuestion, icon: Icon(Icons.skip_next),tooltip: "Skip", )
        ],
      ),
      body: Stack(
        children: [
          Body(),
        ],
      ),
    );
  }
}
