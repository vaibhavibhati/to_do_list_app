import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/images/img.png'),
    fit: BoxFit.cover
    ),
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: Stack(
    children: [
      Container(
        padding: EdgeInsets.only(left: 65, right: 60, top: 130),
        child: Text('Welcome to SignUp page', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
      ),
    // Container(
    // padding: EdgeInsets.only(left: 90, top: 80),
    // child: Text('Create Account', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    // ),
    //   Row(
    //     children: [
    //       Expanded(child: Container(
    //         margin: EdgeInsets.only(top: 160, left: 70, right: 200),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(30.0),
    //           color: Colors.white,
    //         ),
    //         child: TextButton(
    //           onPressed: (){},
    //           child: Text('Login', style: TextStyle(
    //             fontSize: 18, color: Colors.black,),),
    //         ),
    //       )),
    //     ],
    //   ),
    //   Row(
    //     children: [
    //       Expanded(child: Container(
    //         margin: EdgeInsets.only(top: 160, left: 200, right: 70),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(30.0),
    //           color: Colors.amber,
    //         ),
    //         child: TextButton(
    //           onPressed: (){
    //             Navigator.pushNamed(context, 'Register');
    //           },
    //           child: Text('SignUp', style: TextStyle(
    //               fontSize: 18, color: Colors.black),),
    //         ),
    //       ))
    //     ],
    //   ),

    SingleChildScrollView(
    child: Container(
    // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3, right: 50, left: 50),
      padding: EdgeInsets.only(top: 220, left: 70, right: 70),
    child: Column(
    children: [
      TextField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)
          ),
          enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white)
          ),
          // fillColor: Colors.amberAccent,
          // filled: true,
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
      ),
      SizedBox(height: 30,),
    TextField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
        ),
        enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white)
        ),
    // fillColor: Colors.amberAccent,
    // filled: true,
    hintText: 'Password',
      hintStyle: TextStyle(color: Colors.white),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),),
    ),
    SizedBox(height: 30,),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
      focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.amber)
      ),
      enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white)
      ),
    // fillColor: Colors.amberAccent,
    // filled: true,
    hintText: 'Confirm Password',
      hintStyle: TextStyle(color: Colors.white),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
    ,),
    ),

      SizedBox(height: 70,),
      Container(
        // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.amber,
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                child: Text('Sign Up', style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,),),
              ),
            ))
          ],
        ),
      ),

    // SizedBox(height: 40,),
    // Row( mainAxisAlignment: MainAxisAlignment.center,
    // children: [
    // Text('Sign Up',
    // style: TextStyle(
    // fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,
    // ),
    // ),
    // ],
    // ),
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
