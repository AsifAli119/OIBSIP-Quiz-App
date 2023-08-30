class Questions{
  final int id, answer;
  final String questions;
  final List<String> options;
  Questions(this.answer, {required this.id, required this.questions, required this.options});
}
const List sample_data = [
  {
    "id": 1,
    "question": "Flutter is a opens source UI kit created by _______",
    "answer": ["Apple","Google","Facebook", "Microsoft"],
    "answer_index":1
  },
  {
    "id": 2,
    "question": "Which programming language is primarily used for developing applications with Flutter?",
    "answer": ["Dart", "Java", "Swift", "Python"],
    "answer_index": 0
  },

  {
    "id": 3,
    "question": "What is the main advantage of Flutter's 'hot reload' feature?",
    "answer": ["Faster compilation times", "Automatic bug fixing", "Real-time collaboration", "Quick code changes preview"],
    "answer_index": 3
  },

  {
    "id": 4,
    "question": "Which widget in Flutter is used to create a scrollable list of widgets?",
    "answer": ["ListView", "GridView", "Column", "Row"],
    "answer_index": 0
  },

  {
    "id": 5,
    "question": "What does the term 'widget' refer to in Flutter?",
    "answer": ["A small application", "A user interface element", "A layout template", "An animation sequence"],
    "answer_index": 1
  },
  {
    "id": 6,
    "question": "Which widget in Flutter is used to display a single value within a circle?",
    "answer": ["CircleAvatar", "RoundBox", "CircularWidget", "SphereIcon"],
    "answer_index": 0
  },

  {
    "id": 7,
    "question": "What is the purpose of 'pubspec.yaml' file in a Flutter project?",
    "answer": ["To define project dependencies", "To specify hardware requirements", "To manage user authentication", "To create UI layouts"],
    "answer_index": 0
  },

  {
    "id": 8,
    "question": "Which Flutter widget is used to display an image from the internet?",
    "answer": ["ImageView", "NetImage", "WebImage", "Image.network"],
    "answer_index": 3
  },

  {
    "id": 9,
    "question": "What is the function of 'setState' in Flutter?",
    "answer": ["To change the entire application state", "To update the user interface", "To define a new screen layout", "To manage asynchronous operations"],
    "answer_index": 1
  },

  {
    "id": 10,
    "question": "Which package in Flutter allows you to add beautiful and responsive charts?",
    "answer": ["graph_flutter", "chart_widgets", "fl_chart", "visual_charts"],
    "answer_index": 2
  },

];