// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/controller/home_screen_controller.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 26, 26),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Nithin",
                        style: TextStyle(
                            color: ColorConstants.normalWhite,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Lets make this day more productive",
                        style: TextStyle(
                          color: ColorConstants.normalWhite,
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/2220337/pexels-photo-2220337.jpeg?auto=compress&cs=tinysrgb&w=600"),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorConstants.lightBlack),
                child: Center(
                  child: Text(
                    "Choose a category",
                    style: TextStyle(
                        color: ColorConstants.normalWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Lets play",
                style: TextStyle(
                  color: ColorConstants.normalWhite,
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 15),
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    childAspectRatio: 2 / 2.1,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  CategoryModel item = HomeScreenController.categoryList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                QuizScreen(categoryModel: item),
                          ));
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorConstants.lightBlack),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: NetworkImage(item.imageUrl),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Text(
                            item.text,
                            style: TextStyle(
                              color: ColorConstants.normalWhite,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "${item.questionsList.length} questions",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
