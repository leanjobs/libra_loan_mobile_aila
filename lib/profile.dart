import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraloan_mobile_aila/book_detail.dart';
import 'package:libraloan_mobile_aila/completed_books.dart';
import 'package:libraloan_mobile_aila/history_request_books.dart';
import 'package:libraloan_mobile_aila/saved_books.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _username = '';
  String _email = '';

  void _showSaveDialog(BuildContext context, String title,
      TextEditingController controller, VoidCallback onSave) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      animType: AnimType.bottomSlide,
      title: title,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter your $title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: onSave,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    )..show();
  }

  void _showSaveUsernameDialog(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    _showSaveDialog(context, 'username', _usernameController, () {
      setState(() {
        _username = _usernameController.text;
      });
      Navigator.of(context).pop(); // Nutup dialog
    });
  }

  void _showSaveEmailDialog(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    _showSaveDialog(context, 'email', _emailController, () {
      setState(() {
        _email = _emailController.text;
      });
      Navigator.of(context).pop(); // Nutup Dialog
    });
  }

  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F8FE),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.fromLTRB(27, 70, 27, 260),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenWidth * 0.01,
                  0,
                  screenWidth * 0.01,
                  screenHeight * 0.05,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 218.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                            )),
                        Text(
                          'Profile',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: 27,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 31),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x59BEBEBE),
                      offset: Offset(0, 10),
                      blurRadius: 8.5500001907,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 11, 0, 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://awsimages.detik.net.id/community/media/visual/2022/11/20/parti-kejora-bayi-orang-utan-di-serulingmas-zoo-banjarnegara-minggu-20112022-6_43.jpeg?w=650",
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: CircleBorder(),
                        ),
                        width: 90,
                        height: 90,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 21, 0, 21),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                              child: Text(
                                'Pacar wonu',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Text(
                              'pacarwonu@gmail.com',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xFF8C8989),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x59BEBEBE),
                      offset: Offset(0, 10),
                      blurRadius: 8.5500001907,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(14, 20, 9, 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 4, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child: SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.person,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Text(
                                    'Username',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'pcr wonu',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 4, 18.5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x38000000),
                          ),
                          child: Container(
                            width: 349,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 4, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child: SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.alternate_email_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 4),
                                  child: Text(
                                    'Email',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'pacarwonu@gmail.com',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 4, 15.5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x38000000),
                          ),
                          child: Container(
                            width: 349,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child: SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.alternate_email_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1, 0, 4),
                                  child: Text(
                                    'Password',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '*******',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              //popular
              SizedBox(
                width: screenWidth - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saved',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 1; i < 10; i++)
                      Container(
                        // width: 378,
                        // height: 208.59,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 1; i < 4; i++)
                              GestureDetector(
                                onTap: () {
                                  // Aksi yang diinginkan saat box ditekan
                                  print("Box ditekan!");
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return BookDetail();
                                  }));
                                },
                                child: Container(
                                  width: 120.67,
                                  height: 208.59,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 120.67,
                                          height: 174.57,
                                          decoration: ShapeDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/1.jpeg',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        top: 180.48,
                                        child: SizedBox(
                                          width: 120.67,
                                          height: 28.11,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Laskar Pelangi',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Futura',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2,
                                                ),
                                              ),
                                              Text(
                                                'Andrea Hirata',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF919191),
                                                  fontSize: 12,
                                                  fontFamily: 'Futura',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 5.83,
                                        top: 153,
                                        child: Container(
                                          width: 37.87,
                                          height: 16.17,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 37.87,
                                                  height: 16.17,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 2,
                                                top: 1,
                                                child: Icon(
                                                  CupertinoIcons.star_fill,
                                                  color: Colors.yellow,
                                                  size: 12,
                                                ),
                                              ),
                                              Positioned(
                                                left: 15.70,
                                                top: 3,
                                                child: SizedBox(
                                                  width: 20.32,
                                                  height: 15.22,
                                                  child: Text(
                                                    '4.0',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 8,
                                                      fontFamily: 'Futura',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
