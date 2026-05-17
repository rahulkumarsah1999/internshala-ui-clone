import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String btname;
  final Color ? bgColor;
  final TextStyle ? textStyle;
  final VoidCallback? onTap;
  const ButtonWidget({super.key,
  required this.btname,
    this.bgColor,
    this.onTap,
    this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onTap ?? (){},

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent.shade400,
            shape: RoundedSuperellipseBorder(
              borderRadius: BorderRadius.circular(20),
            )
          ),
          child: Text(btname,style: textStyle),
      ),
    );
  }
}
