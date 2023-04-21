import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


Widget fourth(){
  return IntrinsicHeight(
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Lessons for you", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
              Spacer(),
              Text("View all"),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ],
      ),
    ),
  );
}
Widget scrollable2(){
  return Container(
    height: 320,
    width: 450,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.white
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: SizedBox(
            width: 270,
            height: 290,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/img_1.png"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BABYCARE",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Understanding of human behaviour",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text(
                            "3 min",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 70,
                            height: 25,
                            child: Icon(Icons.lock_open_sharp),
                          ),


                        ],
                      )
                      /*Text(
                        "16 lessons",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.white
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child: SizedBox(
            width: 270,
            height: 290,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/img_1.png"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BABYCARE",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueAccent
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Understanding of human behaviour",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text(
                            "3 min",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 70,
                            height: 25,
                            child: Icon(Icons.lock_open_sharp),
                          ),


                        ],
                      )
                      /*Text(
                        "16 lessons",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey
                        ),
                      ),*/
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


