import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraloan_mobile_aila/book_detail.dart';
import 'package:libraloan_mobile_aila/activity_approve.dart';
import 'package:libraloan_mobile_aila/activity_request.dart';
import 'package:libraloan_mobile_aila/categories.dart';
import 'package:libraloan_mobile_aila/compenents/popularItem.dart';
import 'package:libraloan_mobile_aila/popular.dart';
import 'package:libraloan_mobile_aila/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //NAV BAR
              SizedBox(
                width: double.infinity,
                height: 500, // Adjusted height to accommodate the new container
                child: Stack(
                  children: [
                    //image
                    Positioned(
                      top: 35,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Profile();
                          }));
                        },
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://awsimages.detik.net.id/community/media/visual/2022/11/20/parti-kejora-bayi-orang-utan-di-serulingmas-zoo-banjarnegara-minggu-20112022-6_43.jpeg?w=650"),
                              fit: BoxFit.fill,
                            ),
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    ),
                    //
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //teks
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Text(
                            'Haiii,',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                        //teks2
                        Text(
                          'Mannn',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                        ),
                        SizedBox(height: 20),
                        //search
                        Container(
                          width: screenWidth - 40,
                          height: 52,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: screenWidth - 40,
                                  height: 52,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x2D919191),
                                        blurRadius: 10.40,
                                        offset: Offset(4, 5),
                                        spreadRadius: 5,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                top: 8,
                                child: Container(
                                  width: screenWidth -
                                      60, // Adjusting width based on screen width and padding
                                  height: 37,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            hintText: 'Search...',
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              fontSize: 20,
                                              fontFamily: 'Futura',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10.0),
                                        child: Icon(
                                          CupertinoIcons.search,
                                          size: 35,
                                          color: Color(0x2D919191),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 35),
                        //request book
                        SizedBox(
                          width: screenWidth - 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Request Books',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Futura',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.25,
                                height: 28,
                                child: GestureDetector(
                                  onTap: () {
                                    print("requestboook");
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return MyActivityRequest();
                                    }));
                                  },
                                  child: Text(
                                    'More ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF8BB0FA),
                                      fontSize: 15,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: 120,
                          child: Text(
                            'for offline books',
                            style: TextStyle(
                              color: Color(0xFF919191),
                              fontSize: 13,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for (int i = 1; i < 6; i++)
                                // Request
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 321,
                                    height: 138,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 321,
                                                  height: 138,
                                                  child: Stack(
                                                    children: [
                                                      //item request book
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 321,
                                                          height: 138,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            shadows: [
                                                              BoxShadow(
                                                                color: Color(
                                                                    0x59BDBDBE),
                                                                blurRadius:
                                                                    17.10,
                                                                offset: Offset(
                                                                    0, 10),
                                                                spreadRadius: 3,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 16,
                                                        top: 14,
                                                        child: Container(
                                                          width: 73,
                                                          height: 110,
                                                          decoration:
                                                              ShapeDecoration(
                                                            image:
                                                                DecorationImage(
                                                              image: AssetImage(
                                                                'assets/images/1.jpeg',
                                                              ),
                                                              fit: BoxFit.fill,
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5)),
                                                            shadows: [
                                                              BoxShadow(
                                                                color: Color(
                                                                    0x339D9D9D),
                                                                blurRadius:
                                                                    21.60,
                                                                offset: Offset(
                                                                    7, 9),
                                                                spreadRadius: 2,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 101,
                                                        top: 14,
                                                        child: SizedBox(
                                                          width: 200,
                                                          child: Text(
                                                            'Laskar Pelangi',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'Futura',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0.07,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 101.26,
                                                        top: 47,
                                                        child: Container(
                                                          width: 203.74,
                                                          height: 13,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 203.74,
                                                                  child:
                                                                      Text.rich(
                                                                    TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Request date',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF919191),
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 203.74,
                                                                  child: Text(
                                                                    '2023-05-05',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF919191),
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Futura',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          0.13,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 101,
                                                        top: 79,
                                                        child: Container(
                                                          width: 203.74,
                                                          height: 13,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 203.74,
                                                                  child:
                                                                      Text.rich(
                                                                    TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Return date',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '                         ',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF919191),
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 203.74,
                                                                  child: Text(
                                                                    '-',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF919191),
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Futura',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          0.13,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 101.26,
                                                        top: 63,
                                                        child: Container(
                                                          width: 203.74,
                                                          height: 13,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 152.06,
                                                                top: 0,
                                                                child:
                                                                    Container(
                                                                  width: 51.68,
                                                                  height: 13,
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned(
                                                                        left: 0,
                                                                        top: 0,
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              51.68,
                                                                          height:
                                                                              13,
                                                                          decoration:
                                                                              ShapeDecoration(
                                                                            color:
                                                                                Color(0xFFA7C1F6),
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        left: 0,
                                                                        top: 3,
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              51.68,
                                                                          height:
                                                                              7,
                                                                          child:
                                                                              Text(
                                                                            'waiting',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 7,
                                                                              fontFamily: 'Futura',
                                                                              fontWeight: FontWeight.w500,
                                                                              height: 0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 199.76,
                                                                  child: Text(
                                                                    'Approval date ',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Futura',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height:
                                                                          0.13,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 101,
                                                        top: 95,
                                                        child: Container(
                                                          width: 203.74,
                                                          height: 13,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 203.74,
                                                                  child: Text(
                                                                    '-',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF919191),
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Futura',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          0.13,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 199.76,
                                                                  child:
                                                                      Text.rich(
                                                                    TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Deadlines',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '                                  ',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF919191),
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 101,
                                                        top: 111,
                                                        child: Container(
                                                          width: 203.74,
                                                          height: 13,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 203.74,
                                                                  child: Text(
                                                                    '-',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFF919191),
                                                                      fontSize:
                                                                          10,
                                                                      fontFamily:
                                                                          'Futura',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          0.13,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: SizedBox(
                                                                  width: 199.76,
                                                                  child:
                                                                      Text.rich(
                                                                    TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Penalties',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '                                                     ',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Color(0xFF919191),
                                                                            fontSize:
                                                                                10,
                                                                            fontFamily:
                                                                                'Futura',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            height:
                                                                                0.13,
                                                                          ),
                                                                        ),
                                                                      ],
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
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.25,
                      height: 28,
                      child: GestureDetector(
                        onTap: () {
                          print("done");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Categories();
                          }));
                        },
                        child: Text(
                          'More ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF8BB0FA),
                            fontSize: 15,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //item categories
                    for (int i = 1; i < 10; i++)
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Categories();
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 62,
                            height: 90,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 62,
                                    height: 62,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/1.jpeg'),
                                        fit: BoxFit.fill,
                                      ),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 62,
                                  child: SizedBox(
                                    width: 62,
                                    height: 28,
                                    child: Text(
                                      'Romance',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Futura',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
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
                      'Popular',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.25,
                      height: 28,
                      child: GestureDetector(
                        onTap: () {
                          print("done");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Popular();
                          }));
                        },
                        child: Text(
                          'More ',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF8BB0FA),
                            fontSize: 15,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //item popular
              popularItem()
            ],
          ),
        ),
      ),
    );
  }
}
