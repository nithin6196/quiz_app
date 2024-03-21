import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/model/quiz_screen_model/question_model.dart';

class HomeScreenController {
  static List<CategoryModel> categoryList = [
    CategoryModel(
      text: "Sports",
      imageUrl:
          "https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&w=600",
      questionsList: sportsQuestionsList,
    ),
    CategoryModel(
      text: "Chemistry",
      imageUrl:
          "https://images.pexels.com/photos/2280549/pexels-photo-2280549.jpeg?auto=compress&cs=tinysrgb&w=600",
      questionsList: chemistryQuestionsList,
    ),
    CategoryModel(
      text: "Math",
      imageUrl:
          "https://images.pexels.com/photos/1329296/pexels-photo-1329296.jpeg?auto=compress&cs=tinysrgb&w=600",
      questionsList: mathsQuestionsList,
    ),
    CategoryModel(
      text: "Flutter",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpPJQTui5QBRTSEorVPnhwouhuIfEfsVx8VTQK1wpFQ&s",
      questionsList: flutterQuestionsList,
    ),
  ];
  static List<QuestionsModel> flutterQuestionsList = [
    QuestionsModel(
      question: "What is Flutter?",
      optionsList: [
        "A programming language",
        "A database management system",
        "A framework for building UIs",
        "An operating system",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which programming language is used in Flutter?",
      optionsList: [
        "Java",
        "C++",
        "Python",
        "Dart",
      ],
      correctAnswerIndex: 3,
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
  static List<QuestionsModel> sportsQuestionsList = [
    QuestionsModel(
      question: "What is a dugout in baseball?",
      optionsList: [
        "A type of pitch",
        "A seating area for players and staff",
        "A protective gear worn by players",
        "A type of baseball bat",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the objective of a penalty kick in soccer?",
      optionsList: [
        "To score a goal",
        "To change the game's momentum",
        "To pass the ball to a teammate",
        "To receive a yellow card",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "In basketball, what does NBA stand for?",
      optionsList: [
        "National Baseball Association",
        "National Boxing Association",
        "National Basketball Association",
        "National Badminton Association",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question:
          "Which of the following is a popular tennis tournament held annually in England?",
      optionsList: [
        "Roland Garros",
        "US Open",
        "Australian Open",
        "Wimbledon",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is a slam dunk in basketball?",
      optionsList: [
        "A type of dribbling technique",
        "A shot in which the ball is thrust downward through the hoop",
        "A high jump performed by a player",
        "A defensive maneuver",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the standard length of a marathon race in kilometers?",
      optionsList: [
        "10 km",
        "21 km",
        "42.195 km",
        "100 km",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which sport involves a shuttlecock and a racket?",
      optionsList: [
        "Tennis",
        "Badminton",
        "Squash",
        "Table Tennis",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is a touchdown in American football?",
      optionsList: [
        "A goal scored by kicking the ball through the uprights",
        "A type of tackle",
        "A type of pass completion",
        "A score worth six points by carrying the ball into the opponent's end zone",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is the highest achievable break in snooker?",
      optionsList: [
        "147",
        "100",
        "50",
        "200",
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "In which sport would you find a striker?",
      optionsList: [
        "Golf",
        "Cricket",
        "Rugby",
        "Fencing",
      ],
      correctAnswerIndex: 1,
    ),
  ];
  static List<QuestionsModel> chemistryQuestionsList = [
    QuestionsModel(
      question: "What is the atomic number of carbon?",
      optionsList: [
        "8",
        "12",
        "16",
        "6",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "What is the chemical symbol for gold?",
      optionsList: [
        "Ag",
        "G",
        "Au",
        "Go",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which gas is most abundant in the Earth's atmosphere?",
      optionsList: [
        "Oxygen",
        "Nitrogen",
        "Carbon dioxide",
        "Hydrogen",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the pH value of a neutral solution?",
      optionsList: [
        "0",
        "7",
        "14",
        "1",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the chemical formula for water?",
      optionsList: [
        "CO2",
        "NaCl",
        "H2O",
        "CH4",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which element has the chemical symbol 'Fe'?",
      optionsList: [
        "Silver",
        "Iron",
        "Gold",
        "Iodine",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question:
          "What is the process of converting a solid directly into vapor called?",
      optionsList: [
        "Evaporation",
        "Condensation",
        "Sublimation",
        "Fusion",
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "What is the main component of natural gas?",
      optionsList: [
        "Ethane",
        "Methane",
        "Propane",
        "Butane",
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the chemical formula for methane?",
      optionsList: [
        "CO2",
        "H2O",
        "NH3",
        "CH4",
      ],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: "Which of the following is an example of a noble gas?",
      optionsList: [
        "Oxygen",
        "Nitrogen",
        "Helium",
        "Carbon",
      ],
      correctAnswerIndex: 2,
    ),
  ];
  static List<QuestionsModel> mathsQuestionsList = [
    QuestionsModel(
      question: "What is the value of π (pi) to two decimal places?",
      optionsList: ["3.14", "3.16", "3.12", "3.18"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the square root of 144?",
      optionsList: ["14", "12", "10", "16"],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: "What is the result of 5 multiplied by 7?",
      optionsList: ["35", "42", "25", "30"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the value of 9 squared?",
      optionsList: ["81", "18", "27", "64"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the sum of the first 10 natural numbers?",
      optionsList: ["55", "45", "50", "60"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the result of 18 divided by 3?",
      optionsList: ["6", "5", "4", "3"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the next number in the sequence: 2, 4, 6, 8, ...?",
      optionsList: ["10", "12", "14", "16"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the value of 3 factorial (3!)?",
      optionsList: ["6", "3", "9", "12"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the result of 7 plus the square root of 16?",
      optionsList: ["11", "12", "13", "14"],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: "What is the area of a square with side length 5 units?",
      optionsList: [
        "25 square units",
        "20 square units",
        "30 square units",
        "15 square units"
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
