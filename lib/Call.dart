import 'package:doctor/callPayment.dart';
import 'package:doctor/home.dart';
import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 20
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/user.png'),
              fit: BoxFit.contain
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.autorenew,size: 30),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Text('Doctor jane Bintang',style: TextStyle(fontSize: 18)),
                        Text('08:20',style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ),
                  new Spacer(),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.chat_bubble_outline)
                  )
                ],
              ),
              new Spacer(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        image: DecorationImage(
                          image: AssetImage('images/user.png'),
                          fit: BoxFit.contain
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 1,color: Colors.black)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.mic,size: 30),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 60,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.red
                      ),
                      child: MaterialButton(
                        onPressed: ()
                        {
                          openDialog();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call,color: Colors.white,size: 30),
                            SizedBox(width: 20),
                            Text(
                              'End',
                              style: TextStyle(
                                  fontSize:20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 1,color: Colors.black)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.videocam_rounded,color: Colors.black,size: 30),

                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
            child: Text('Video Recorded')),
        content: Text(
          'All these video conversations have been recorded automatically, do your want to save them to your mobile?',
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            onPressed: (){
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallPayment())
                );
              });
            },
            child: Container(
              width: 135,
              height: 50,
              child: Center(
                child: Text(
                  'No',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1)
              ),
            )
          ),
          TextButton(
            onPressed: (){
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home())
                );
              });
            },
            child: Container(
              width: 135,
              height: 50,
              child: Center(
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightGreen
              ),
            )
          ),
        ],
      ));
}
