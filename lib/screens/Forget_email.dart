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
    return SafeArea(
      child: Scaffold( backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/forgot.png'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container( padding: EdgeInsets.only(top: 100,left: 110),
              child:
                Image.asset(
                    'assets/images/img_2.png',
                    width: 200,
                    height: 200,
                  ),
            ),
            Container( padding: EdgeInsets.only(top: 50, left: 80),
              child: Text('Forget Password?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container( padding: EdgeInsets.only(top: 290,left: 60),
              child: Column(
                children: [
                  Text('Enter Associated Email',
                    style:TextStyle(fontSize: 23, fontWeight: FontWeight.bold) ,
                  ),
                  Text('Adddress With Your Account',
                    style:TextStyle(fontSize: 23, fontWeight: FontWeight.bold) ,
                  ), SizedBox(height: 10,),
                  Text('We can send a link on your email',
                    style:TextStyle(fontSize: 18,) ,
                  )

                ],
              ),
            ),
            Container( padding: EdgeInsets.only(top: 420, left: 50, right: 50),
              child:  Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black)
                      ),
                      // fillColor: Colors.amberAccent,
                      // filled: true,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black,
                    ),
                    child: TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                        child: Text('Send',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        )),
                  )
                ],
              ),
            )
          ],

        )

      ),
    );
  }
}
