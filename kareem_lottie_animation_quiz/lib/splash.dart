import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'homepage.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Lottie.asset('assets/quiz-bump.json'),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  children: [
                    TyperAnimatedTextKit(
                      text: ['تطبيق لاختبار معلوماتك عن رؤساء مصر'],
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic),
                      pause: Duration(milliseconds: 5),
                      speed: Duration(milliseconds: 200),
                      displayFullTextOnTap: true,
                      isRepeatingAnimation: false,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          child: Text(
                            'إذا كنت مستعد فاضغط هنا',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
