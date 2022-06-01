import 'package:doctor/Register.dart';
import 'package:doctor/home.dart';
import 'package:flutter/material.dart';

class CallPayment extends StatefulWidget {
  const CallPayment({Key? key}) : super(key: key);

  @override
  State<CallPayment> createState() => _CallPaymentState();
}

class _CallPaymentState extends State<CallPayment> {

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text('Call Payment'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: const EdgeInsets.only(top: 140),
          child: Column(
            children: [
              Text(
                'Total Cost',
                style: TextStyle(
                    fontSize: 30
                )
              ),
              Text(
                '\$250',
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 50,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Choose Your Payment Method',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isClicked = false;
                  });
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: !isClicked ? Colors.lightGreen : Colors.grey,
                          width: !isClicked ? 4 : 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Icon(Icons.credit_card,color: !isClicked ? Colors.black : Colors.grey,),
                        SizedBox(width: 15),
                        Text(
                          'Credit Card',
                          style: TextStyle(
                            fontSize: 23,
                            color: !isClicked ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isClicked = true;
                  });
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: isClicked ? Colors.lightGreen : Colors.grey,
                          width: isClicked ? 4 : 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Icon(Icons.money,color: !isClicked ? Colors.grey : Colors.black,),
                        SizedBox(width: 15,),
                        Text(
                          'Cash',
                          style: TextStyle(
                            fontSize: 23,
                            color: !isClicked ? Colors.grey : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Add Payment Method',
                style: TextStyle(
                    color: Colors.lightGreen,
                ),
              ),
              new Spacer(),
              TextButton(
                  onPressed: (){
                    openDialog();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: Center(
                      child: Text(
                        'Pay',
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
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
  context: context,
  builder: (context) => SimpleDialog(
    title: Center(
      child: Text('Give Feedback'),
    ),
    children: [
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
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
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                ),
                Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                ),
                Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                ),
                Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 40,
                ),
                Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 40,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Feedback',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
              ],
            ),
            SizedBox(height: 15),
            TextFormField(
              decoration: InputDecoration(
                  labelText: '  Write Your Feedback',
                  labelStyle: TextStyle(
                      fontSize: 13
                  ),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
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
                  width: double.infinity,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Send',
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
            SizedBox(height: 15),
            Center(
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register())
                        );
                      });
                    },
                    child: Text('No Thanks',style: TextStyle(color: Colors.grey),))),
          ],
        ),
      )

    ],
  ));
}
