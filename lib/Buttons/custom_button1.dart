import 'package:flutter/material.dart';

class CustomButton1 extends StatefulWidget {
  var onPressed;
   CustomButton1({required this.onPressed,super.key});

  @override
  State<CustomButton1> createState() => _CustomButton1State();
}

class _CustomButton1State extends State<CustomButton1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        minWidth: 30,
        color: Colors.blue,
        padding:const EdgeInsets.all(20),
        onPressed: widget.onPressed,
        child: const Text(
          '+1 Point',
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
      ),
    );
  }
}
