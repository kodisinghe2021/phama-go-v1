
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _counter = 0;

  void counter() {
    Future.delayed(
      const Duration(milliseconds: 1000),
      () {
        setState(() {
          _counter++;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_counter < 4) {
      counter();
    } else {
      setState(() {
        _counter = 0;
        counter();
      });
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  'LOADING${'.' * _counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
