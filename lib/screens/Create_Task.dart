import 'package:flutter/material.dart';
import 'package:to_do_list_app/screens/Home.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Home.png'),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Create Task', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),),
          leading: IconButton(onPressed: (){
            // Navigator.push(context, )
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
          }, icon:Icon(Icons.arrow_back, size: 40,color: Colors.black,)),
        ),

        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Container(
            //   padding: EdgeInsets.only(left: 120, top: 80),
            //   child: Text('Create Task', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            // ),
    SingleChildScrollView(
    child: Container(
    // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4, right: 50, left: 50),
    padding: EdgeInsets.only(top: 80, left: 50, right: 50),
    child: Column(
    children: [
    TextField(
    decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black)
    ),
    enabledBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black)
    ),
    // fillColor: Colors.amberAccent,
    // filled: true,
    hintText: 'Title',
    hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(10)),),
    ),
    SizedBox(height: 50,),
    TextField(
    obscureText: true,
    decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black)
    ),
    enabledBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black)
    ),
    // fillColor: Colors.amberAccent,
    // filled: true,
    hintText: 'Date',
    hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(10))
    ,),
    ),
    SizedBox(height: 50,),
    TextField(
    decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black)
    ),
    enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.black)
    ),
    // fillColor: Colors.amberAccent,
    // filled: true,
    hintText: 'Time',
    hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(10)),),
    ),
    SizedBox(height: 50,),
    TextField(
    decoration: InputDecoration(
    focusedBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black)
    ),
    enabledBorder: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black)
    ),
    // fillColor: Colors.amberAccent,
    // filled: true,
    hintText: 'Description',
    hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(10))
    ,),
    ),
      SizedBox(height: 100,),
      Container(
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 70, right: 70),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.black,
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: Text('Create Task', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,),),
              ),
            ))
          ],
        ),
      )
    ]
    ),
    ),
    )
        ]
      ),
    )
    );
  }
}
