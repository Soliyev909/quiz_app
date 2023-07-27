import 'package:flutter/material.dart';
import 'package:quiz/src/common/constants/app_colors.dart';
import 'package:quiz/src/feature/quiz/widgets/quiz_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: 380,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(45),
                      bottomLeft: Radius.circular(45),
                    ),
                    color: AppColors.maniColor,
                  ),
                  // child: Center(
                  //   child: ,
                  // ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 90),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.75,
                child: const Card(
                  elevation: 4,
                  color: AppColors.whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.correctColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        "10",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.correctColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Correct",
                                    style: TextStyle(
                                      color: AppColors.numberColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.wrongColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        "10",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.wrongColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Wrong",
                                    style: TextStyle(
                                      color: AppColors.numberColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 35,
                    right: 35,
                  ),
                  child: SizedBox(
                    height: 77,
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
                          "Play Again",
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
                  height: 77,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(),
                        ),
                        (route) => false,
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
                        "Home",
                        style: TextStyle(
                            color: AppColors.numberColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
