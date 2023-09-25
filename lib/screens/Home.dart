import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:to_do_list_app/screens/Create_Task.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<int> time = [
  //   7-8, 8-9, 9-10, 10-11, 11-12, 12-13, 13-14, 14-15, 15-16, 16-17, 17-18, 18-19, 19-20,
  //   20-21, 21-22, 22-23, 23-24
  // ];
  List<int> data = [
    10, 9, 8, 7, 6, 5, 4, 3, 2, 1
    // 'Meeting, Lunch, Running, Excercise, '
  ];


  Widget _buildItemList(BuildContext context, int index) {
    // if (index == time.length)
    //   return Center(
    //     child: CircularProgressIndicator(),
    //   );
    // return Container(
    //   width: 150,
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Container(
    //         color: Colors.black,
    //         width: 150,
    //         height: 200,
    //         child: Center(
    //           child: Text('${time[index]}',
    //             style: TextStyle(fontSize: 50.0, color: Colors.white),),
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    if (index == data.length)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Container(
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            width: 150,
            height: 200,
            child: Center(
              child: Text('${data[index]}',
                style: TextStyle(fontSize: 50.0, color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, color: Colors.black, size: 30,),
            Container(
              height: 50, width: 50,
              child: ClipRect(
                child: Image.asset('assets/images/ManAvtar.png'),
              ),

            )
          ],
        ),
      ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Home.png'),
                fit: BoxFit.fill
            ),
          ),
          child: Column(
            children: [
              // Text('Today List', style: TextStyle(fontSize: 20, color: Colors.black,),),
              Expanded(
                  child: ScrollSnapList(
                    onItemFocus: (contex) {},
                    itemBuilder: _buildItemList,
                    itemSize: 150,
                    dynamicItemSize: true,
                    reverse: true,
                    onReachEnd: () {
                      print('Done!');
                    },
                    itemCount: data.length ,
                  )
              ),
              // Expanded(
              //     child: ScrollSnapList(
              //       onItemFocus: (contex) {},
              //       itemBuilder: _buildItemList,
              //       itemSize: 150,
              //       dynamicItemSize: true,
              //       reverse: true,
              //       onReachEnd: () {
              //         print('Done!');
              //       },
              //       itemCount: time.length ,
              //     )
              // ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 50,right: 30),
                    child: Column(
                      children: [
                        IconButton(onPressed: (){
                          // Navigator.push(context, )
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> CreateTask()));
                        }, icon:Icon(Icons.add_circle_outline, size: 70,))
                      ],
                    ),
                  )
                  ],)
                ],
              )
          ),

      );

  }

}
