import 'package:doctor/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text(
            'Register',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Expanded(
              flex:2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.account_circle,size: 150,),
                      Text('ADD PHOTOS')
                    ],
                  )
                ]
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: '  Your Full Name',
                            labelStyle: TextStyle(
                                fontSize: 13
                            ),
                            border: OutlineInputBorder()
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Birthday',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: '  dd/mm/yy',
                              labelStyle: TextStyle(
                                  fontSize: 13
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: '  Your Email',
                              labelStyle: TextStyle(
                                  fontSize: 13
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: '  Your Phone Number',
                              labelStyle: TextStyle(
                                  fontSize: 13
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(
                        'Location/Address',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: '  Your Location',
                              labelStyle: TextStyle(
                                  fontSize: 13
                              ),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height:5),
            Container(
              height: 60,
              width: double.infinity,
              child: MaterialButton(
                onPressed: ()
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register())
                  );
                },
                child: Text(
                  'Next',
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
    );
  }
}
