import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text('Notifications'),
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.workspaces_filled),
            onPressed: () {  },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1,color: Colors.lightGreen)
                  ),
                  child: CircleAvatar(
                    child: Icon(Icons.subdirectory_arrow_right,color: Colors.lightGreen,size: 100,),
                    backgroundColor: Colors.transparent,
                    radius: 90,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Your Request Has Been Approved',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
                'Request Details',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Jojon Suehndra',
                style: TextStyle(
                    color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Desease',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Sore Eyes',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'St.Broxlyn 212',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'aku ingin menjadi setitik awan kecil'
                    'dilangint bersama mentarri yaga hah',
                style: TextStyle(
                  color: Colors.grey,
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
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: ()
                    {

                    },
                    child: Text(
                      'Confirm',
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: ()
                    {

                    },
                    child: Text(
                      'Cancel Request',
                      style: TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),

                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 1,color: Colors.grey)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
