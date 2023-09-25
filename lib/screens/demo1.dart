import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/Component/custom_button.dart';

class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(image:
          DecorationImage(
            image: AssetImage("assets/images/login.png"), // Provide your image path here
            fit: BoxFit.cover, // You can adjust the BoxFit as needed
          ),
          ),
          child: Container(
              color: Colors.black.withOpacity(0.6),
            height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:  Row(
          children: [
            CustomButton(onPressed: (){}, text: "Login", color: Colors.yellow),
            CustomButton(onPressed: (){}, text: "SignUp", color: Colors.yellow),
          ],
        ),
          ),
          ),
        ),
    );

  }
}
