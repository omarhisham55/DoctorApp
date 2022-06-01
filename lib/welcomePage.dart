import 'package:doctor/Login.dart';
import 'package:doctor/SignUp.dart';
import 'package:doctor/Urgent.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children:
          [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 60),
            Expanded(
              flex: 2,
              child: Wrap(
                children:
                [
                  Text(
                    'Lorem ipsum dolor sit amet, conse '
                    'ctetur adipiscing elit, t. Ut enim ad veni'
                    ' am, quis nostrud exercitation ullamco',
                    style: TextStyle(
                        color: Colors.white,
                        wordSpacing: 2
                    ),

                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signUp())
                      );
                    },
                    child: Text(
                      'Sign Up',
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: double.infinity,
              child: TextButton(
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login())
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                  ),

                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.white),

                      )
                  )
                ),
              ),
            ),
          ),
        ),
            Expanded(
              flex: 1,
              child: MaterialButton(

                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Urgent())
                  );
                },

                child: Text(
                  'URGENT',
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