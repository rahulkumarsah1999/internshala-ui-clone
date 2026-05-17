import 'package:flutter/material.dart';


  @override
  Widget Socialicon(String path) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white30,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(

                color: Colors.blueGrey.withValues(alpha: 0.8)),
          boxShadow: [BoxShadow(
            color: Colors.cyan.withValues(alpha: 0.4),
            blurRadius: 12,
            spreadRadius: 1,
          )]
        ),
        child: Center(
          child: Image.asset(path, height: 28,),
        ),
      ),
    );
  }
