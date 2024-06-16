import 'package:flutter/material.dart';

void main() {
  runApp(const _Myapp());
}

class _Myapp extends StatefulWidget {
  const _Myapp({super.key});

  @override
  State<_Myapp> createState() => __MyappState();
}

class __MyappState extends State<_Myapp> {
  var _color = Colors.yellow;
  var _height = 200.0;
  var _width = 200.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: const Duration(seconds: 4),
                  color: _color,
                  width: _width,
                  height: _height),
              ElevatedButton(
                child: const Text("Animate!"),
                onPressed: () {
                  _color = Colors.red;
                  _height = 400.0;
                  _width = 400.0;
                  setState(() {});
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
