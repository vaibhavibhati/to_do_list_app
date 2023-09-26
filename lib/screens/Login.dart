
//
//
// import 'package:flutter/material.dart';
// import 'package:to_do_list_app/screens/Forget_email.dart';
// import 'package:to_do_list_app/screens/Home.dart';
// import 'package:to_do_list_app/screens/Register.dart';
// import 'package:provider/provider.dart';
//
// class Login extends StatefulWidget {
//   const Login({super.key});
//
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   bool isRegister = false;
//
//   // void togglePage() {
//   //   setState(() {
//   //     isRegister = !isRegister;
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     // final authProvider = Provider.of(context);
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('assets/images/login.png'),
//               fit: BoxFit.cover
//           ),
//         ),
//         child: Container(
//
//         ),
//       ),
//
//         // backgroundColor: Colors.transparent,
//         //    body: SingleChildScrollView(
//         //       child: Container(
//         //         // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, right: 50, left: 50),
//         //         padding: const EdgeInsets.only(top: 220, left: 70, right: 70),
//         //         child: Column(
//         //           children: [
//         //
//         //             TextField(
//         //               decoration: InputDecoration(
//         //                 border: UnderlineInputBorder(
//         //                   borderRadius: BorderRadius.circular(10),
//         //                   borderSide: const BorderSide(color: Colors.white, width: 2)
//         //                 ),
//         //                 // fillColor: Colors.amberAccent,
//         //                 // filled: true,
//         //                 hintText: 'Email',
//         //                 hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),),
//         //                 ), style: const TextStyle(
//         //               color: Colors.white
//         //             ),
//         //             ),
//         //             const SizedBox(height: 50,),
//         //             TextField(
//         //               obscureText: true,
//         //               decoration: InputDecoration(
//         //                 border: UnderlineInputBorder(
//         //                     borderRadius: BorderRadius.circular(10),
//         //                     borderSide: const BorderSide(color: Colors.white, width: 2),
//         //                 ),
//         //                 hintText: 'Password',
//         //                 hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),),
//         //                 ),style: const TextStyle(
//         //                 color: Colors.white
//         //             ),
//         //             ),
//         //
//         //             // const SizedBox(height: 50,),
//         //             if(isRegister)
//         //               TextField(
//         //               obscureText: true,
//         //               decoration: InputDecoration(
//         //                 border: UnderlineInputBorder(
//         //                   borderRadius: BorderRadius.circular(10),
//         //                   borderSide: const BorderSide(color: Colors.white, width: 2),
//         //                 ),
//         //                 hintText: 'Confirm Password',
//         //                 hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),),
//         //               ),style: const TextStyle(
//         //                 color: Colors.white
//         //             ),
//         //             ),
//         //             const SizedBox(height: 50,),
//         //             Row(
//         //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //               children: [
//         //                 TextButton(onPressed: (){
//         //                   setState(() {
//         //                     isRegister=false;
//         //                   });
//         //                   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Register()));
//         //                 }, child: const Text('SignUp', style: TextStyle(
//         //                   decoration: TextDecoration.underline,
//         //                   fontSize: 18,
//         //                   color: Colors.white,
//         //                 ),)),
//         //                 TextButton(onPressed: (){
// //         //                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ForgetEmail()));
// //         //                 }, child: const Text('Forget Password?', style: TextStyle(
// //         //                   decoration: TextDecoration.underline,
// //         //                   fontSize: 18,
// //         //                   color: Colors.white,
// //         //                 ),)),
//         //               ],
//         //             ),
//         //             const SizedBox(height: 50,),
//         //             Container(
//         //               // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
//         //               child: Row( mainAxisAlignment: MainAxisAlignment.center,
//         //                 children: [
//         //                   Expanded(child: Container(
//         //                     margin: const EdgeInsets.only(left: 50, right: 50),
//         //                     decoration: BoxDecoration(
//         //                       borderRadius: BorderRadius.circular(30.0),
//         //                       color: Colors.amber,
//         //                     ),
//         //                     child: TextButton(
//         //                       onPressed: (){
//         //                         // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Home()));
//         //                       setState(() {
//         //                         isRegister=true;
//         //                         print("isRegister tru");
//         //                       });
//         //                       },
//         //                       child: const Text('Login', style: TextStyle(
//         //                         fontSize: 20,
//         //                         color: Colors.black,),),
//         //                     ),
//         //                   ))
//         //                 ],
//         //               ),
//         //             ),
//         //           ],
//         //         ),
//         //       ),
//         //     )
//         //   ],
//
//
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/Component/custom_button.dart';
import 'package:to_do_list_app/screens/Forget_email.dart';
import 'package:to_do_list_app/screens/Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [Container(
          decoration: const BoxDecoration(image:
          DecorationImage(
            image: AssetImage("assets/images/login.png"), // Provide your image path here
            fit: BoxFit.cover, // You can adjust the BoxFit as needed
          ),
          ),
        ),
          Center(
            child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.6),
                    ),
                    // padding: EdgeInsets.only(top: 500,left: 50, right: 50),
                    width: 330,
                    height: 550,
                  ),
          ),
          Container(
            padding: const EdgeInsets.only(top:100),
            child: Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(onPressed: (){setState(() {
                  isLogin = false;
                });}, text: "Login", color: !isLogin? Colors.amberAccent: Colors.white70),
                CustomButton(onPressed: (){setState(() {
                  isLogin = true;
                });}, text: "SignUp", color: isLogin? Colors.amberAccent: Colors.white70),
              ],
            ),
          ),
         Container(
              padding: const EdgeInsets.only(top: 200, left: 80, right: 80),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white)
                      ),
                      // fillColor: Colors.amberAccent,
                      // filled: true,
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                     ),
                  ),
                  const SizedBox(height: 40,),
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white)
                      ),
                      // fillColor: Colors.amberAccent,
                      // filled: true,
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  if(isLogin)
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.white)
                      ),
                      // fillColor: Colors.amberAccent,
                      // filled: true,
                      hintText: 'Confirm Password',
                      hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
         Container(
           padding: const EdgeInsets.only(top: 430, left: 100),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               if(!isLogin)
               TextButton(onPressed: (){
                 setState(() {
                   isLogin = false;
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ForgetEmail()),);
                 });
               }, child: const Text('Forget Password?',
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
               ),
               ),
               ),
               // if(isLogin)
               // TextButton(onPressed: (){
               //   setState(() {
               //     isLogin = true;
               //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()),);
               //   });
               // }, child: const Text('Already Registered?',
               //   style: TextStyle(
               //     fontSize: 18,
               //     fontWeight: FontWeight.bold,
               //     color: Colors.white,
               //   ),
               // ),)
             ],
           ),
         ),
         Row(
          mainAxisAlignment:  MainAxisAlignment.center,
           children: [
             Container(
               padding: const EdgeInsets.only(left: 50, right: 50),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30.0),
                 color: Colors.amber,
               ),
               margin: const EdgeInsets.only(top: 500, left: 80, right: 80),
               child:
               TextButton(onPressed: (){
                 setState(() {
                   // isLogin = true;
                   Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>const Home()));
                 });
               }, child: const Text('Login',style: TextStyle(
                 fontSize: 25,
                 color: Colors.black,
               ),)),
             ),
           ],
         ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [ if(isLogin)
          //     TextButton(onPressed: (){setState(() {
          //       // isLogin = true;
          //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
          //     });}, child:
          //     Text('SignUp', style: TextStyle(fontSize: 25),),
          //     )
          //   ],
          // )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Expanded(child: Container(
          //       margin: const EdgeInsets.only(left: 50, right: 50),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30.0),
          //         color: Colors.amber,
          //       ),
          //       child: TextButton(
          //         onPressed: (){
          //           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
          //         },
          //         child: const Text('Login', style: TextStyle(
          //           fontSize: 20,
          //           color: Colors.black,),),
          //       ),
          //     ))
          //   ],
          // )
    ]
    )
    )
    );
  }
}
