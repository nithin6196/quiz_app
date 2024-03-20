import 'package:quiz_app/model/quiz_screen_model/question_model.dart';

class HomeScreenController {
  static List<QuestionsModel> questionsList = [
    QuestionsModel(
      question: "What is Flutter?",
      optionsList: [
        "A programming language",
        "A framework for building UIs",
        "A database management system",
        "An operating system",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "Which programming language is used in Flutter?",
      optionsList: [
        "Java",
        "Dart",
        "C++",
        "Python",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What does hot reload do in Flutter?",
      optionsList: [
        "Reloads the entire application",
        "Compiles the code",
        "Refreshes the UI without losing the current state",
        "Generates a new APK",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What does MaterialApp do in Flutter?",
      optionsList: [
        "Creates a new Material Design",
        "Configures the root widget for a Flutter app",
        "Manages HTTP requests",
        "Provides access to device hardware",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a widget in Flutter?",
      optionsList: [
        "A type of food",
        "A reusable building block for UI",
        "A programming language",
        "A tool for debugging",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the main function in a Flutter app?",
      optionsList: [
        "build()",
        "run()",
        "main()",
        "start()",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What widget is used to create a list of items in Flutter?",
      optionsList: [
        "Container",
        "Column",
        "GridView",
        "Text",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question:
          "What widget in Flutter is used to create a scrollable list of widgets?",
      optionsList: [
        " Row",
        "Column",
        "ListView",
        "GridView",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What does setState() do in Flutter?",
      optionsList: [
        "Reloads the entire application",
        "Updates the UI with new state",
        "Deletes the current state",
        "Compiles the code",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "Which IDE is commonly used for Flutter development?",
      optionsList: [
        "Eclipse",
        "Visual Studio Code",
        "NetBeans",
        "Sublime Text",
      ],
      correctAnswerIndex: 1,
    ),
  ];
}
