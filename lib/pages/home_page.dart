import 'package:flutter/material.dart';
import 'package:innovilage/pages/ibu_hamil.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  var height, width;

  List imgData = [
    "assets/hamil.png",
    "assets/jadwal.png",
    "assets/grafik.png",
    "assets/lainnya.png",
  ];

  List titles = [
    "ibu hamil",
    "jadwal",
    "grafik",
    "lainnya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF164863),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            height = constraints.maxHeight;
            width = constraints.maxWidth;

            return Expanded(
              child: SingleChildScrollView(
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
                          height: width > height ? width * 0.15 : height * 0.15,
                          width: width,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Selamat Datang',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Bidan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  '1234',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
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
                        child: Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: width > height
                                  ? 4
                                  : 2, // Change crossAxisCount for landscape
                              childAspectRatio: 1.1,
                              mainAxisSpacing: 25,
                            ),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: imgData.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  if (titles[index] == "ibu hamil") {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => IbuHamil()),
                                        (route) => false);
                                    // Sesuaikan dengan nama rute layar ibu hamil
                                  } else {
                                    // Logika untuk item lainnya (jadwal, grafik, lainnya)
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(
                                      0xff9BBEC8,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        imgData[index],
                                        width: 90,
                                      ),
                                      Text(
                                        titles[index],
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
