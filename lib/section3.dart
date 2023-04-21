import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


Widget third(){
  return IntrinsicHeight(
    child: Container(
      padding: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Events and Experiences", style: TextStyle(
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),),
              Spacer(),
              Text("View all",style: TextStyle(
                fontFamily: 'Inter',
                color: Colors.grey,
                fontSize: 12
              ),),
              Icon(Icons.arrow_forward_rounded,size: 16,color: Colors.grey,),
            ],
          ),
        ],
      ),
    ),
  );
}
Widget scrollable1(){
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
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blueAccent
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Understanding of human behaviour",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text(
                            "13 Feb, Sunday",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 70,
                            height: 25,
                            child: OutlinedButton(
                                onPressed: (){},
                                child: Text("Book",style: TextStyle(fontFamily: 'Inter'),),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.lightBlue,),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              ),

                            ),
                          ),


                        ],
                      )
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
                            fontFamily: 'Inter',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blueAccent
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Understanding of human behaviour",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text(
                            "13 Feb, Sunday",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                            width: 70,
                            height: 25,
                            child: OutlinedButton(
                              onPressed: (){},
                              child: Text("Book",style: TextStyle(fontFamily: 'Inter'),),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.lightBlue,),
                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              ),

                            ),
                          ),


                        ],
                      )
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


