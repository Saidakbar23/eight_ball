import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Ask Me Anything?"),
        ),
        body: EightBallPage(),
      ),
    ),
  );
}

class EightBallPage extends StatefulWidget {
  const EightBallPage({Key? key}) : super(key: key);

  @override
  State<EightBallPage> createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  var randomImage = 1;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              randomImage = random.nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$randomImage.png"),
        ),
      ),
    );
  }
}
