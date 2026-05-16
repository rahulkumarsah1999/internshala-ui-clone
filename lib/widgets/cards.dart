import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final  String tag;
  final String title;
  final String prefixText;

  final String highlightText;
  final String suffixText;
  final List<Color> gradientColors;
  final VoidCallback onTap;
  const Cards({super.key,
  required this.tag,
    required this.title,
    required this.prefixText,
    required this.highlightText,
    required this.suffixText,
    required this.gradientColors,
    required this.onTap
  }) ;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Container(
      width: screenwidth*0.7,
      height: screenheight*0.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
gradient: LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors:gradientColors,
),
      ),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.white70),
                  ),
              child: Text(tag ,style: TextStyle(color: Colors.white,fontSize: 11),
              ),
                ),
              ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                  title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: screenheight*0.001),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white
                    ),
                    children: [
                      TextSpan( text: prefixText),
                      TextSpan(text: highlightText,
                      style: TextStyle(
                        color:Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      TextSpan(text: suffixText),
                    ],
                  ),
              )
            ),
             SizedBox(height: screenheight*0.02),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: screenwidth*0.015),
               child: Container(
                 height: screenheight*0.04,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextButton(onPressed: onTap,
                      child: Text("Know More")
                  ),
               ),
             )
          ],
        ),
      ),
    );
  }
}
