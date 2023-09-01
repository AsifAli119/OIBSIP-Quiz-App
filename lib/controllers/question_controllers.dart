import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quizapp/models/questions.dart';
import 'package:quizapp/screens/result_screen.dart';

class QuestionControllers extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation=> this._animation;
  List<Question> _questions =
      sample_data.map(
              (question) => Question(
          id: question['id'],
          questions: question['question'],
              options: question['options'],
                answer: question['answer_index']),
      ).toList();
late PageController _pageController;
PageController get pageController => this._pageController;
  List<Question> get questions => this._questions;
  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;
  late int _correctAns ;
  int get correctAns => this._correctAns;
  late int _selectedAns;
  int get selectedAns => this._selectedAns;
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;
  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;


  @override
  void onInit() {
    _animationController = AnimationController(duration: Duration(seconds: 60),vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)..
    addListener(() {
      update();
    });
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }
  void checkAns(Question question, int selectedIndex){
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;
    if(_correctAns == _selectedAns)
      _numOfCorrectAns++;
    update();
    Future.delayed(Duration(seconds: 3), (){
      nextQuestion();
    });
  }
  void nextQuestion(){
    if(_questionNumber.value != _questions.length){
      _isAnswered = false;
      _pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);
      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    }else {
      Get.to(ResultScreen());
    }
  }
  void updateTheQnNumber(int index){
    _questionNumber.value = index +1;
  }
}