import 'package:doctor/Call.dart';
import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text('Appointment'),
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.workspaces_filled),
            onPressed: () {  },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'You have appoint for video call',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                'Lorem ipsum dolor sit amet, conse '
                    'ctetur adipiscing elit, t. Ut enim ad veni'
                    ' am, quis nostrud exercitation ullamco',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    wordSpacing: 2
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Doctor',
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.1,color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('images/user.png')
                    ),
                    SizedBox(width: 15),
                    Column(
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
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                                Icons.star,
                                color: Colors.yellow
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.yellow
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.yellow
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.yellow
                            ),
                            Icon(
                                Icons.star,
                                color: Colors.yellow
                            ),
                            Text(
                              '4.9',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: ()
                  {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Call())
                      );
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.videocam_rounded,color: Colors.white,size: 30),
                      SizedBox(width: 20),
                      Text(
                        'Start Call',
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),

                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightGreen
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
