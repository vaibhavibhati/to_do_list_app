import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/Home.dart';
import 'package:to_do_list_app/screens/Login.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black,
            child: Container(
              // padding: EdgeInsets.only(top: 3s),
              child: IconButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
              },
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: 30,
              ),
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(top: 15,left: 60),
          child:
          Text('Edit Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          // Container(
          //   padding: EdgeInsets.only(top: 10, left: 20),
          //     child: CircleAvatar(
          //       radius: 40,
          //       backgroundColor: Colors.deepOrangeAccent,
          //       child: Image.asset(
          //         'assets/images/img_2.png',
          //       ),
          //     ),
          //   ),
          ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_1.png'),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 120, left: 150),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.deepOrangeAccent,
                child: Image.asset(
                  'assets/images/img_2.png',
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 300,left: 30, right: 30),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color:  Colors.black.withOpacity(0.5),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField( obscureText: true,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.black)
                          ),
                          hintText: 'Password',
                          hintStyle:TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black)
                          ),
                          // fillColor: Colors.amberAccent,
                          // filled: true,
                          hintText: 'Date of Birth',
                          hintStyle: TextStyle(
                              color:  Colors.black.withOpacity(0.5),
                              fontSize: 15
                          ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.black)
                        ),
                        // fillColor: Colors.amberAccent,
                        // filled: true,
                        hintText: 'Phone',
                        hintStyle: TextStyle(color:  Colors.black.withOpacity(0.5), fontSize: 15),
                      ),
                    ),
                    Row( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Container(
                          margin: EdgeInsets.only(top: 150,left: 80, right: 80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.black,
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
                            },
                            child: Text('Log Out', style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,),),
                          ),
                        ))
                      ],
                    ),
                    //           ]
                    //         ),
                    //         ),
                    // ),
                  ],
                ),
              ),
            ),
          ]),
    ));
  }
}
