import 'package:flutter/material.dart';

import '../../feature/quiz/widgets/quiz_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const QuizScreen(),
    );
  }
}
