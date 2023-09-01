import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizapp/colors.dart';
import 'package:quizapp/screens/quiz_screen.dart';
TextEditingController nameTxtController = TextEditingController();
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2341),
      body: Stack(
        children: [
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: cDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2,),
                Text("Let's Play Quiz,",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Enter Your name below.."),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: nameTxtController,
                  decoration: InputDecoration(
                      fillColor: Color(0xFF1C2341),
                      filled: true,
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      )),
                ),
                Spacer(),
                InkWell(
                  onTap: () => Get.to(QuizScreen()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(cDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: PrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: Text(
                      "START",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
