
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_list_app/main.dart';
import 'package:to_do_list_app/screens/Home.dart';
import 'package:to_do_list_app/screens/Login.dart';


class Splash_Screen extends StatefulWidget {
      Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
//   void initState(){
//     super.initState();
//     _navigatetohome();
// }
// _navigatetohome()async {
//     await Future.delayed(Duration(milliseconds: 2500),(){});
//     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
// }
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(height: 700,
            child: Stack(
                children: [
                  Container( padding: EdgeInsets.only(top: 330, left: 20, right: 50),
                      child: Text('Your todo list \nManager', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Container( padding: EdgeInsets.only(top: 460, left: 20, right: 50),
                    child: Text('You can create your \nown to do list', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                    child: Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container(
                          margin: EdgeInsets.only(top: 590,left: 100, right: 100),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.black,
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                            },
                            child: Text('Get Started', style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,),),
                          ),
                        ))
                      ],
                    ),
                  ),
                ]
            ),
          ),
        )
    );

  }
}
