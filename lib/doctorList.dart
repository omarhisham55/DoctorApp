// import 'package:doctor/doctorDetails.dart';
import 'package:doctor/doctorDetails.dart';
import 'package:flutter/material.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);


  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text(
              'Doctor List'
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.workspaces_filled),
            onPressed: () {  },)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: InkWell(
                onTap: ()
                {
                  print("Clicked");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorDetails()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/user.png')
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dudung Sokmati',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Eye Specialist',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.lightGreen,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                    Icons.location_on,
                                    color: Colors.grey
                                ),
                                Text(
                                  'St.Bronxlyn 212',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ),
            ),
            Container(
              height: 130,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: InkWell(
                // onTap: ()
                // {
                //   print("Clicked");
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => P3()));
                // },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:AssetImage('images/user.png') ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nunung Brandon',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Eye Specialist',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.lightGreen,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                    Icons.location_on,
                                    color: Colors.grey
                                ),
                                Text(
                                  'St.Bronxlyn 212',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ),
            ),
            Container(
              height: 130,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: InkWell(
                // onTap: ()
                // {
                //   print("Clicked");
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => P3()));
                // },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:AssetImage('images/user.png')
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Udin Batakooran',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Eye Specialist',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.lightGreen,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                    Icons.location_on,
                                    color: Colors.grey
                                ),
                                Text(
                                  'St.Bronxlyn 212',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '3.9',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ),
            ),
            Container(
              height: 130,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: InkWell(
                // onTap: ()
                // {
                //   print("Clicked");
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => P3()));
                // },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                          backgroundImage:AssetImage('images/user.png')
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cucup Joentravo',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Eye Specialist',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.lightGreen,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                    Icons.location_on,
                                    color: Colors.grey
                                ),
                                Text(
                                  'St.Bronxlyn 212',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '3.1',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ),
            ),
            Container(
              height: 130,
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: InkWell(
                // onTap: ()
                // {
                //   print("Clicked");
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => P3()));
                // },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage:AssetImage('images/user.png')
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Diding Sulidinger',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Eye Specialist',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.lightGreen,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                    Icons.location_on,
                                    color: Colors.grey
                                ),
                                Text(
                                  'St.Bronxlyn 212',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  '2.1',
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ],
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
    );
  }
}
