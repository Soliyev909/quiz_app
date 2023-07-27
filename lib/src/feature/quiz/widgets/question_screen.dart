import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz/src/common/constants/app_colors.dart';
import 'package:quiz/src/feature/quiz/widgets/quiz_screen.dart';

import 'score_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<int> numberOne = List.generate(10, (index) => Random().nextInt(20) + 80);
  List<int> numberTwo = List.generate(10, (index) => Random().nextInt(20) + 80);

  int countQuestion = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.maniColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const QuizScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
            weight: 21,
          ),
          color: AppColors.whiteColor,
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    ),
                    color: AppColors.maniColor,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                    color: AppColors.maniColor,
                  ),
                  child: Center(
                    child: Text(
                      "QUIZZLY",
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 30),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Card(
                      elevation: 4,
                      color: AppColors.whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Question $countQuestion/10",
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "97 + 32 = ?",
                            style: TextStyle(
                              color: AppColors.numberColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    child: CircularProgressIndicator(),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 35,
                    right: 35,
                  ),
                  child: SizedBox(
                    height: 67,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.whiteColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.maniColor),
                      ),
                      child: Center(
                        child: Text(
                          "$numberOne",
                          style: TextStyle(
                              color: AppColors.numberColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 35,
                    right: 35,
                  ),
                  child: SizedBox(
                    height: 67,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.whiteColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.maniColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Level 1",
                          style: TextStyle(
                              color: AppColors.numberColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 35,
                    right: 35,
                  ),
                  child: SizedBox(
                    height: 67,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.whiteColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.maniColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Level 1",
                          style: TextStyle(
                              color: AppColors.numberColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 35,
                    right: 35,
                  ),
                  child: SizedBox(
                    height: 67,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScoreScreen(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.whiteColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.maniColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Level 1",
                          style: TextStyle(
                              color: AppColors.numberColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
