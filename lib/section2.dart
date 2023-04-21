import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


Widget second(){
  return IntrinsicHeight(
    child: Container(
      padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Programs for you", style: TextStyle(fontFamily: 'Lora',fontWeight: FontWeight.w600, fontSize: 20),),
              Spacer(),
              Text("View all",style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey),),
              Icon(Icons.arrow_forward_rounded,size: 16,color: Colors.grey,),
            ],
          ),
        ],
      ),
    ),
  );
}
Widget scrollable(){
  return Container(
    height: 300,
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
            height: 270,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/img.png"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LIFESTYLE",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blueAccent
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "A Complete guide for your new born baby",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "16 lessons",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
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
            height: 270,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/img.png"),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LIFESTYLE",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blueAccent
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "A Complete guide for your new born baby",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "16 lessons",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
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

