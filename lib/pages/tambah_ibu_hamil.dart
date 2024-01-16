import 'package:flutter/material.dart';
import 'package:innovilage/pages/home_page.dart';

class TambahIbuHamil extends StatefulWidget {
  const TambahIbuHamil({super.key});

  @override
  State<TambahIbuHamil> createState() => _TambahIbuHamilState();
}

class _TambahIbuHamilState extends State<TambahIbuHamil> {
  var height, width;
  TextEditingController namaController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController tanggallahirController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController pekerjaanController = TextEditingController();
  TextEditingController pendidikanController = TextEditingController();
  TextEditingController kehamilankeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF164863),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          //child: Column(
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
                  height: height * 0.10,
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
                height: height * 0.75,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Data Ibu Hamil',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: namaController,
                              decoration: InputDecoration(
                                  labelText: 'Nama',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: nikController,
                              decoration: InputDecoration(
                                  labelText: 'NIK',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: tanggallahirController,
                              decoration: InputDecoration(
                                  labelText: 'Tanggal lahir',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: alamatController,
                              decoration: InputDecoration(
                                  labelText: 'Alamat',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: pekerjaanController,
                              decoration: InputDecoration(
                                  labelText: 'Pekerjaan',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: pendidikanController,
                              decoration: InputDecoration(
                                  labelText: 'Pendidikan',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: kehamilankeController,
                              decoration: InputDecoration(
                                  labelText: 'Kehamilan Ke',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                        ],
                      ),
                    ],
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
          ],
        ),
      ),
    );
  }
}
