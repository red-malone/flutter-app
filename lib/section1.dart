import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:learn/colors.dart';

Color col = "#598BED".toColor();
Widget first(BuildContext context){
  return  SafeArea(
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
             Text(
               "Hello,Priya !",
               style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30,fontFamily: 'Lora'),
               textAlign: TextAlign.start,),
            SizedBox(height: 5,),
            Text(
                "What do you wanna learn today ?",
                style: TextStyle(
                    fontFamily:'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
            SizedBox(height: 10,),

            Center(child: options(context))
          ]
      ),
  );
}
Widget options(BuildContext context){
  return Column(
    children: [
      cards1(context),
      cards2(context)
    ],
  );
}
Widget cards1(BuildContext context){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: "#598BED".toColor()
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: MediaQuery.of(context).size.width/2.5,
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
            width: MediaQuery.of(context).size.width/2.5,
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
Widget cards2(BuildContext context){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: col
              ),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:SizedBox(
            width: MediaQuery.of(context).size.width/2.5,
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
            width: MediaQuery.of(context).size.width/2.5,
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