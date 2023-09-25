import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/Login.dart';

class ForgetEmail extends StatefulWidget {
  const ForgetEmail({super.key});

  @override
  State<ForgetEmail> createState() => _ForgetEmailState();
}

class _ForgetEmailState extends State<ForgetEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/ForgetPassword.png'),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, right: 50, left: 110),
                child: Text('Forget Password?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),)),
            SingleChildScrollView(
              child: Container(
                // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, right: 50, left: 50),
                padding: EdgeInsets.only(top: 450, left: 70, right: 70),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        // fillColor: Colors.amberAccent,
                        // filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 50,),
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                      child: Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Container(
                            margin: EdgeInsets.only(left: 50, right: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.black,
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                              },
                              child: Text('Send', style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,),),
                            ),
                          ))

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
