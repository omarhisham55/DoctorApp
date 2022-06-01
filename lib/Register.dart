import 'package:doctor/home.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(
          child: Text('Register'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 40
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Choose Your Payment Method',style: TextStyle(fontSize: 16)),
              SizedBox(height: 30),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isClicked = false;
                  });
                },
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: !isClicked ? Colors.lightGreen : Colors.grey,
                      width: !isClicked ? 4 : 1
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PayPal',
                          style: TextStyle(
                            fontSize: 23,
                            color: !isClicked ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Lorem ipsum dolor sit amet, conse '
                              'ctetur adipiscing elit',
                          style: TextStyle(
                            fontSize: 15,
                            color: !isClicked ? Colors.black : Colors.grey,
                          ),
                        )
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
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: isClicked ? Colors.lightGreen : Colors.grey,
                          width: isClicked ? 4 : 1
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Credit Card',
                          style: TextStyle(
                            fontSize: 23,
                            color: isClicked ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Lorem ipsum dolor sit amet, conse '
                              'ctetur adipiscing elit',
                          style: TextStyle(
                              fontSize: 15,
                            color: isClicked ? Colors.black : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Credit Card Number',
                style: TextStyle(
                  fontSize: 18
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: '  Your Credit Card Number',
                      labelStyle: TextStyle(
                        fontSize: 13
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'CCV Code',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: '  CCV Code',
                      labelStyle: TextStyle(
                          fontSize: 13
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Expire Date',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: '  MM/YY',
                      labelStyle: TextStyle(
                          fontSize: 13
                      ),
                      suffixIcon: Icon(Icons.calendar_today_outlined),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Name on Card',
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: '  Your Name on Card',
                      labelStyle: TextStyle(
                          fontSize: 13
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 60,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
