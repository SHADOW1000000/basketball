import 'package:flutter/material.dart';

class CustomButton3 extends StatefulWidget {
  var onPressed;
  CustomButton3({super.key,required this.onPressed});

  @override
  State<CustomButton3> createState() => _CustomButton3State();
}

class _CustomButton3State extends State<CustomButton3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        color: Colors.blue,
        padding:const EdgeInsets.all(20),
        onPressed: widget.onPressed,
        child: const Text(
          '+3 Point',
          style: TextStyle(color: Colors.white,fontSize: 20),
        ),
      ),
    );
  }
}
