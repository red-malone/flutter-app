import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget first(){
  return IntrinsicHeight(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:  [
          Padding(
            padding:EdgeInsets.only(
              top: 20,
              left: 10,
              right: 90,
            ),
            child: Text("Hello,Priya !",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
          ),
          Padding(
            padding:EdgeInsets.all(10),
            child: Text(
              "What do you wanna learn today",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Column(
              children: [
                cards1(),
                cards2()
              ],
            ),
          )
        ]
    ),

  );
}
Widget cards1(){
  return  Row(
      children: [
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.lightBlue
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 180,
            height: 48,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 5),child: Icon(Icons.book,color: Colors.lightBlue,)),
                  SizedBox(width: 5,),
                  Text("Programs",
                    style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ),
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.lightBlue
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 180,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 5),child: Icon(Icons.question_mark,color: Colors.lightBlue,)),
                SizedBox(width: 5,),
                Text("Get Help",
                  style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ],
    );
}
Widget cards2(){
  return  Row(
      children: [
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.lightBlue
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 180,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 5),child: Icon(Icons.book_outlined,color: Colors.lightBlue,)),
                SizedBox(width: 5,),
                Text("Learn",
                  style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.lightBlue
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 180,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 5),child: Icon(Icons.question_mark,color: Colors.lightBlue,)),
                SizedBox(width: 5,),
                Text("DD Tracker",
                  style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ],
    );
}