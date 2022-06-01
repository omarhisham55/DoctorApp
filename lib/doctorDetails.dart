import 'package:doctor/Notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
            child: Text('Doctor Details')
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.workspaces_filled),
            onPressed: () {  },)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 30
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(height: 50),
              Text(
                'Short Description',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              SizedBox(height: 20),
              Text(
                  'Lorem ipsum dolor sit amet, conse '
                      'ctetur adipiscing elit, t. Ut enim ad veni'
                      ' am, quis nostrud exercitation ullamco',
                  style: TextStyle(
                      color: Colors.grey
                  )
              ),
              SizedBox(height: 60),
              Text(
                'Location',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on,color: Colors.grey,),
                  Text(
                    'St.Bronxlyn 212',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image(
                  image: AssetImage('images/user.png'),
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.fitHeight,

                ),
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notifications())
                    );
                  },
                  child: Text(
                    'Request',
                    style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),

                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightGreen
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
