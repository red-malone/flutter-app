import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


Widget second(){
  return IntrinsicHeight(
    child: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Programs for you", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
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

Widget scrollable(){
  return
}