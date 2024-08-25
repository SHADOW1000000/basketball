import 'package:flutter/material.dart';

class CustomButton2 extends StatefulWidget {
  var onPressed;
   CustomButton2({super.key,required this.onPressed});

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        color: Colors.blue,
        padding:const EdgeInsets.all(20),
        onPressed: widget.onPressed,
        child: const Text(
          '+2 Point',
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
      ),
    );
  }
}
