import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:dev_quiz/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(title: "DevQuiz", home: SplashPage());
  }
}
