import 'package:flutter/material.dart';
import 'package:innovilage/pages/login_page.dart';
import 'package:innovilage/theme.dart';

class GeneralLogo extends StatelessWidget {
  final Widget child;
  GeneralLogo({required this.child});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'HALO MAMA',
          style: regulerTextStyle.copyWith(fontSize: 36, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
            child: Image.asset(
              'assets/splash.png',
              width: 250,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'CEK KESEHATAN SEKARANG',
          style: regulerTextStyle.copyWith(fontSize: 25, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 80),
        Container(
          width: MediaQuery.of(context).size.width - 100,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPages()));
            },
            child: Text(
              'GET START',
              style: regulerTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                primary: birutiga,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
