import 'package:quiz_app/model/quiz_screen_model/question_model.dart';

class CategoryModel {
  String text;
  String imageUrl;
  List<QuestionsModel> questionsList;
  CategoryModel({
    required this.text,
    required this.imageUrl,
    required this.questionsList,
  });
}
