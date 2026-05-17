import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String lableText;
  final String hint;
  final IconData icon;
  final bool obscureText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  const CustomTextField({
    super.key,
    required this.lableText,
    required this.hint,
    required this.icon,
    this.controller,
    this.errorText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _focusNode = FocusNode();
  bool isFocused = false;
  bool isHidden = true;

  @override
  void initState(){
    super.initState();
    isHidden = widget.obscureText;
    _focusNode.addListener((){
      setState(() {
        isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool hasError = widget.errorText !=null;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: hasError
                    ? Colors.red
                    :isFocused
                    ? Colors.cyanAccent
                    : Colors.black,
                width: isFocused ? 1.5 : 1,
              ),
              boxShadow: isFocused
                  ? [
                      BoxShadow(
                        color: Colors.cyanAccent.withValues(alpha: 0.01),
                        blurRadius: 12,
                        spreadRadius: 1,
                      ),
                    ]
                  : [],
            ),
            child: TextField(
              controller: widget.controller,
              focusNode: _focusNode,
              obscureText: isHidden,
              keyboardType: widget.keyboardType,
              cursorColor: Colors.cyan,
              decoration: InputDecoration(
                label: Text(widget.lableText,),
                labelStyle: TextStyle(color: isFocused ? Colors.cyan : Colors.black, fontSize: 20),
                hint: Text(widget.hint),
                visualDensity: VisualDensity.adaptivePlatformDensity,
                suffixIcon: widget.obscureText
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(
                          isHidden
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: hasError ? Colors.red
                          : isFocused
                          ? Colors.cyan
                              : Colors.black
                          ,
                        ),
                      )
                    : null,
                prefixIcon: Icon(
                  widget.icon,
                  color: isFocused ? Colors.cyan : Colors.black,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 18,
                ),
              ),
            ),
          ),
          if (hasError)
            Padding(
                padding: const  EdgeInsets.only(left: 12),
            child: Text(
              widget.errorText!,
              style: const TextStyle(color: Colors.red,fontSize: 12) ,
            )
            ),
            
        ],
      ),
    );
  }
}
