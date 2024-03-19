import 'package:flutter/material.dart';
import 'package:flutter_application_4/views/first_introduction_view.dart';

class OPeningView extends StatefulWidget {
  const OPeningView({super.key});

  @override
  State<OPeningView> createState() => _OPeningViewState();
}

class _OPeningViewState extends State<OPeningView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const FirstIntroductionView()));
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
    );
  }
}
