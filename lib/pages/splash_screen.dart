import 'package:flutter/material.dart';
import 'package:innovilage/pages/login_page.dart';
import 'package:innovilage/widget/button_primary.dart';
import 'package:innovilage/widget/general_logo.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF164863),
      body: GeneralLogo(
        child: ButtonPrimary(
          text: "GET STARS",
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPages()));
          },
        ),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       GeneralLogo(),
      //       SizedBox(
      //         height: 100,
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
