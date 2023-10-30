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
      child: Scaffold(
        extendBodyBehindAppBar: true,
          appBar : AppBar(
            leading: Row(
              children:[ Container(
                padding: EdgeInsets.only(top: 10,left: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.arrow_back,
                  color: Colors.white,
                  size: 25,),
                ),
              ),
            ]
            ),
          backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/forgot.png'),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              SizedBox(height: 70,
                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Forget Password?',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
                ),
              ),
                SizedBox(height: 150,
                  child: Container(
                    child:
                      Image.asset(
                          'assets/images/img_2.png',
                          width: 200,
                          height: 200,
                        ),

                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Column(
                  children: [
                    Text('Enter Associated Email',
                      style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold) ,
                    ),
                    Text('Adddress With Your Account',
                      style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold) ,
                    ), SizedBox(height: 10,),
                    Text('We can send a link on your email',
                      style:TextStyle(fontSize: 20,) ,
                    )


                  ],
                ),
              ),
              Container(
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

          ),
        )

      ),
    );
  }
}
