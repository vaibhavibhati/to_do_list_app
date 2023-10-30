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
    return Scaffold(
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
            Text('Create Task',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
            ),
        ),
        actions: [
          Container(
          ),
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
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 150,left: 30, right: 30),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      hintText: 'Task',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      icon: Icon(
                        Icons.task_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                   ),
                    SizedBox(height: 80,),
                TextField(
                 decoration: InputDecoration(
                 border: UnderlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                 borderSide: const BorderSide(color: Colors.black)
                ),
                hintText: 'Date',
                hintStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                   icon: Container(
                     child: IconButton(onPressed: (){
                       showDatePicker(context: context, initialDate: DateTime.now(),
                           firstDate: DateTime(2023), lastDate: DateTime(2030),
                         builder: (BuildContext context, Widget? child) {
                          return Theme(data: ThemeData.light().copyWith(
                            primaryColor: Colors.amber,
                            colorScheme: ColorScheme.light(primary: Colors.amber)
                          ), child: child!,);
                         }
                       );

                     },
                       icon: Icon(
                         Icons.date_range_outlined,
                         color: Colors.black,
                         size: 25,
                       ),
                     ),
                   )
                ),
                ),
                    SizedBox(height: 80,),
                      TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(color: Colors.black)
                          ),
                          // fillColor: Colors.amberAccent,
                          // filled: true,
                          hintText: 'Time',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                            icon: IconButton(onPressed: (){
                              showTimePicker(context: context, initialTime: TimeOfDay.now(),
                              builder: (BuildContext context, Widget? child) {
                                return Theme(data: ThemeData.light().copyWith(
                                    primaryColor: Colors.amber,
                                    colorScheme: ColorScheme.light(primary: Colors.amber)
                                ), child: child!,);
                              }
                              );
                            },
                              icon: Icon(
                                Icons.watch_later_outlined,
                                color: Colors.black,
                                size: 25,
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 80,),
                      TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.black)
                          ),
                          // fillColor: Colors.amberAccent,
                          // filled: true,
                          hintText: 'Description',
                          hintStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                  Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Container(
                        margin: EdgeInsets.only(top: 120,left: 80, right: 80),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.black,
                        ),
                        child: TextButton(
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                          },
                          child: Text('Create Task', style: TextStyle(
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
    );

  }
}
