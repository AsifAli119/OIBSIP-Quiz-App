import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(child: Column(
            children: [
              Text("Lets Play Quiz,",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white))
            ],
          ))
        ],
      ),
    );
  }
}
