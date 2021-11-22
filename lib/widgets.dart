import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'map1.dart';
import 'map2.dart';
import 'map3.dart';

Widget button(String text, BuildContext context){
  return InkWell(
    onTap: (){
      if(text == 'Map 1')
      Navigator.push(context, MaterialPageRoute(builder: (context) => Map1()));
      else if(text == 'Map 1')
        Navigator.push(context, MaterialPageRoute(builder: (context) => Map2()));
      else
        Navigator.push(context, MaterialPageRoute(builder: (context) => Map3()));
    },
    child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10),
        ),
        color: Colors.blue,
      ),
      child: Text('$text', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),),
    ),
  );
}