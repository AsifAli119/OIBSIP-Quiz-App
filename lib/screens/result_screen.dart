import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quizapp/colors.dart';
import 'package:quizapp/controllers/question_controllers.dart';
import 'package:quizapp/screens/welcome..dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionControllers _qnController = Get.put(QuestionControllers());
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                "${nameTxtController.text.toUpperCase()}",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Your Score is :",
                style: TextStyle(color: Colors.deepPurple, fontSize: 24),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                style: TextStyle(
                    color: Colors.deepPurple, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 20,
                  animation: true,
                  animationDuration: 1000,
                  percent: _qnController.numOfCorrectAns * 10 / 100,
                  progressColor: Colors.deepPurple,
                  backgroundColor: Colors.deepPurple.shade200,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    "${_qnController.numOfCorrectAns * 10}%",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
