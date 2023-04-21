import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learn/colors.dart';

Color col = "#598BED".toColor();
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
              right: 70,
            ),
            child: Text("Hello,Priya !",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,fontFamily: 'Lora'),),
          ),
          Padding(
            padding:EdgeInsets.all(10),
            child: Text(
              "What do you wanna learn today ?",
              style: TextStyle(
                  fontFamily:'Inter',
                  fontWeight: FontWeight.w500,
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
                  color: "#598BED".toColor()
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 160,
            height: 48,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(left: 5),child: Image.asset('assets/images/book.png',width: 20,height: 20,)),
                  SizedBox(width: 10,),
                  Text("Programs",
                    style: TextStyle(color: col,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          ),
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: col
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 160,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 5),child:  Image.asset('assets/images/question.png',width: 20,height: 20,)),
                SizedBox(width: 10,),
                Text("Get Help",
                  style: TextStyle(color: col,fontWeight: FontWeight.w600),)
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
                  color: col
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 160,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 5),child:Image.asset('assets/images/openbook.png',width: 20,height: 20,)),
                SizedBox(width: 10,),
                Text("Learn",
                  style: TextStyle(color: col,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: col
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: 160,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 5),child: Image.asset('assets/images/trello.png',width: 20,height: 20,)),
                SizedBox(width: 10,),
                Text("DD Tracker",
                  style: TextStyle(color: col,fontWeight: FontWeight.w600),)
              ],
            ),
          ),
        ),
      ],
    );
}