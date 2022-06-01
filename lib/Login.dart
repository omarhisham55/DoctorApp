import 'package:doctor/SignUp.dart';
import 'package:doctor/home.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Text(
                    'Telemedicine',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'Email Address',
                    border: OutlineInputBorder()
                  ),
                ),
              )
            ),
            Expanded(
              flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder()
                    ),
                  ),
                )
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home())
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize:20,
                          fontWeight: FontWeight.w400,
                          color: Colors.lightGreen
                      ),

                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(

                onPressed: ()
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signUp())
                  );
                },

                child: Text(
                  'SIGNUP',
                  style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
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
