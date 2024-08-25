import 'package:basketball/Buttons/custom_button1.dart';
import 'package:basketball/Buttons/custom_button2.dart';
import 'package:basketball/Buttons/custom_button3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BasketBall(),
  ));
}

class BasketBall extends StatefulWidget {
  const BasketBall({super.key});

  @override
  State<BasketBall> createState() => _BasketBallState();
}

class _BasketBallState extends State<BasketBall> {
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          "Basketball Score Counter",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text(
                      '$teamA',
                      style: const TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    CustomButton1(onPressed: () {
                      setState(() {
                        teamA += 1;
                      });
                    },),
                    CustomButton2(onPressed: (){
                      setState(() {
                        teamA += 2;
                      });
                    },),
                    CustomButton3( onPressed: (){
                      setState(() {
                        teamA += 3;
                      });
                    },),
                  ],
                ),
                const VerticalDivider(
                  color: Colors.black,
                  width: 20,
                  thickness: 2,
                ),
                Column(
                  children: [
                    const Text('Team B',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                    Text('$teamB',
                        style: const TextStyle(
                            color: Colors.black, fontSize: 30)),
                    CustomButton1(onPressed: () {
                      setState(() {
                        teamB += 1;
                      });
                    },),
                    CustomButton2(onPressed: (){
                      setState(() {
                        teamB += 2;
                      });
                    },

                    ),
                    CustomButton3(
                        onPressed: (){
                          setState(() {
                            teamB += 3;
                          });
                        },
                    ),
                  ],
                ),
              ],
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
               setState(() {
                 teamA = 0;
                 teamB = 0;
               });
              },
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
