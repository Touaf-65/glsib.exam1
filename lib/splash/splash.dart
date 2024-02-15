import 'package:flutter/material.dart';
import 'package:glsib_exam1/app.dart';
import 'package:glsib_exam1/utils/constants/image_strings.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }


  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Container(
      color: Colors.blue,
    ),
    ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Image.asset(AppImages.logo)
            // child: Container(
            //     color: Colors.orange,),
          ),

        ],
      ),
    );
  }
}
