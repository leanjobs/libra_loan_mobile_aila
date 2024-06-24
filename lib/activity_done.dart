import 'package:flutter/material.dart';
import 'package:libraloan_mobile_aila/activity_approve.dart';
import 'package:libraloan_mobile_aila/activity_done.dart';
import 'package:libraloan_mobile_aila/activity_fines.dart';
import 'package:libraloan_mobile_aila/activity_reject.dart';
import 'package:libraloan_mobile_aila/activity_request.dart';

class MyActivityDone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Wrapping the Column with Container
        color: Colors.white, // Setting background color to white
        child: Container(
          padding: EdgeInsets.fromLTRB(19, 51, 22.2, 18),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(8, 0, 8, 36),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'My Activity',
                      style: TextStyle(
                        height: 2,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        fontSize: 27,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => MyActivityRequest()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              spreadRadius: 6,
                              blurRadius: 3,
                              offset: const Offset(
                                  1, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(9),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Request',
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle button 2 tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => MyActivityApprove()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              spreadRadius: 6,
                              blurRadius: 3,
                              offset: const Offset(
                                  1, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(9),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Approve',
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle button 2 tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => MyActivityDone()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFCFDFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              spreadRadius: 6,
                              blurRadius: 3,
                              offset: const Offset(
                                  1, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(9),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle button 2 tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => MyActivityFines()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              spreadRadius: 6,
                              blurRadius: 3,
                              offset: const Offset(
                                  1, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(9),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Fines',
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle button 2 tap
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => MyActivityReject()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.04),
                              spreadRadius: 6,
                              blurRadius: 3,
                              offset: const Offset(
                                  1, 5), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(9),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Reject',
                          style: TextStyle(
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x59BDBDBE),
                          blurRadius: 17.10,
                          offset: Offset(0, 10),
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 86,
                                height: 110,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://m.media-amazon.com/images/I/81bsw6fnUiL._AC_UF1000,1000_QL80_.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x339D9D9D),
                                      blurRadius: 21.60,
                                      offset: Offset(7, 9),
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Laskar Pelangi',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: 'Futura',
                                        fontWeight: FontWeight.w500,
                                        height: 1.3,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Request date: ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '2023-05-05',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Return date: ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '-',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Approval date: ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 2),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFA7C1F6),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(3)),
                                          ),
                                          child: Text(
                                            'waiting',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Futura',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Deadlines: ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '-',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Penalties: ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '-',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1), // Add spacing between the two items
                SizedBox(height: 1),
                SizedBox(height: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
