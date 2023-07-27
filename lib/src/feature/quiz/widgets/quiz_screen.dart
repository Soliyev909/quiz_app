import 'package:flutter/material.dart';
import 'package:quiz/src/common/constants/app_colors.dart';
import 'package:quiz/src/feature/quiz/widgets/question_screen.dart';

import '../../../common/constants/app_img.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.maniColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const Image(
            image: AssetImage(AppImg.bacgroundImg),
            fit: BoxFit.cover,
            height: double.infinity,
            // color: AppColors.maniColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "QUIZZLY",
                style: TextStyle(
                    fontFamily: "Quiz",
                    fontSize: 67,
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColor),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  left: 25,
                  right: 25,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: AppColors.whiteColor,
                    ),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          text: "\t\t\tWelcome to Quizzly!\n\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor,
                            fontSize: 28,
                          ),
                          children: [
                            TextSpan(
                              text: "\t\tWith Quizzly, you can improve\n \tyour"
                                  " thinking, intelligence"
                                  " and\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t logical"
                                  " skills.",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Choose the appropriate level...",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
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
                            builder: (context) => const QuestionScreen(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: AppColors.maniColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.whiteColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Level 1",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )),
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
                        backgroundColor: AppColors.maniColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.whiteColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Level 2",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )),
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
                        backgroundColor: AppColors.maniColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        side: const BorderSide(
                            width: 2, color: AppColors.whiteColor),
                      ),
                      child: const Center(
                        child: Text(
                          "Level 3",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
