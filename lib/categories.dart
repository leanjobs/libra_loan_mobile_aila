import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F8FE),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(27, 51, 25, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'Futura',
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24.1),
                  child: SizedBox(
                    width: MediaQuery.of(context)
                        .size
                        .width, // Menggunakan MediaQuery untuk lebar sesuai dengan lebar layar perangkat
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width *
                                0.3, // Menggunakan persentase lebar layar untuk responsif
                            padding: EdgeInsets.fromLTRB(0, 10.5, 0, 10.5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFCFDFFF)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Romance',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            padding: EdgeInsets.fromLTRB(0, 10.5, 0, 10.5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xCFCFDFFF)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Horror',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          padding: EdgeInsets.fromLTRB(0, 10.5, 0, 10.5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xCFCFDFFF)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Fiction',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
  child: GestureDetector(
    onTap: () {
      print("Container clicked");
      Navigator.pushNamed(context, '/bookdetail');
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 0, 7.8, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/1.jpeg',
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: -4.2,
                    bottom: -3.1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      width: 37.9,
                      height: 16.2,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 8,
                            ),
                            SizedBox(width: 2),
                            Text(
                              '4.0',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                fontSize: 8,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 156.1, 0, 9.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                          width: 8.2,
                          height: 8.2,
                          child: SizedBox(
                            width: 8.2,
                            height: 8.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Laskar Pelangi',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Futura',
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              height: 1.2,
              color: Color(0xFF000000),
            ),
          ),
          Text(
            'Andrea Hirata',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Futura',
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w300,
              fontSize: 12,
              height: 1.2,
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
    ),
  ),
),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/2.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/3.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/4.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/5.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/6.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/7.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/1.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/2.jpeg',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: -4.2,
                                      bottom: -3.1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        width: 37.9,
                                        height: 16.2,
                                        child: Center(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          10, 156.1, 0, 9.5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 0, 0.4),
                                            width: 8.2,
                                            height: 8.2,
                                            child: SizedBox(
                                              width: 8.2,
                                              height: 8.2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              'Laskar Pelangi',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                height: 1.2,
                                color: Color(0xFF000000),
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
      ),
    );
  }
}
