import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('DiCeE'),
        backgroundColor: Colors.red,
      ),
      body: const DiceFun(),
    ),
  ));
}

class DiceFun extends StatelessWidget {
  const DiceFun({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
