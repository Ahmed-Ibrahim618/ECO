import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/opening_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OPeningView()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0x0006d4f2), Colors.lightBlue],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        child: const Column(
          children: [
            Expanded(
              child: Center(
                child: Image(
                  image: AssetImage('images/Layer_1.png'),
                  height: 1000,
                  width: 1000,
                ),
              ),
            ),
            Text('by Ahmed ibrahem')
          ],
        ),
      ),
    );
  }
}
