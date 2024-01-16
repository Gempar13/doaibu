import 'package:flutter/material.dart';
import 'package:innovilage/pages/home_page.dart';
import 'package:innovilage/pages/tambah_ibu_hamil.dart';

class IbuHamil extends StatefulWidget {
  const IbuHamil({super.key});

  @override
  State<IbuHamil> createState() => _IbuHamilState();
}

class _IbuHamilState extends State<IbuHamil> {
  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF164863),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(
                  0xFF427D9D,
                ),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  IconButton(
                    onPressed: () {
                      // Tambahkan logika untuk tombol kembali
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePages()),
                          (route) => false);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Text(
                    "HALO MAMA - Bidan",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              height: height * 0.07,
              width: width,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF427D9D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: height * 0.13,
                  width: width,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Registrasi Ibu Hamil',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Kecamatan Kalipare',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () {
                  // Navigate to the next page when button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            TambahIbuHamil()), // Replace NextPage with the actual page you want to navigate to
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff9BBEC8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: height * 0.08,
                  width: width,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tambah Ibu Hamil',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF427D9D),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: height * 0.50,
                width: width,
                // child: Center(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         'Tambah Ibu Hamil',
                //         style: TextStyle(
                //           fontSize: 20,
                //           color: Colors.white,
                //           fontWeight: FontWeight.w400,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
