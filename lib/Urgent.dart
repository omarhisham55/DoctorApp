import 'package:flutter/material.dart';

class Urgent extends StatefulWidget {
  const Urgent({Key? key}) : super(key: key);

  @override
  State<Urgent> createState() => _UrgentState();
}

class _UrgentState extends State<Urgent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text('Urgent'),
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.workspaces_filled),
            onPressed: () { })
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: '  Your Name',
                          labelStyle: TextStyle(
                              fontSize: 13
                          ),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Desease',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: '  What is your illness',
                          labelStyle: TextStyle(
                              fontSize: 13
                          ),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: '  Where your location',
                          labelStyle: TextStyle(
                              fontSize: 13
                          ),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description (Optional)',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: '  Describe Here',
                          labelStyle: TextStyle(
                              fontSize: 13
                          ),
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 60,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: ()
                  {

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
              )
            ],
          ),
        ),
      ),
    );
  }
}
