import 'dart:math';

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

class DiceFun extends StatefulWidget {
  const DiceFun({super.key});

  @override
  State<DiceFun> createState() => _DiceFunState();
}

class _DiceFunState extends State<DiceFun> {
  /// Note
  /// Variable Scope Matters.
  ///
  /// For example: the 'leftButtonNumber' variable could be declared outside of
  /// the 'build' method's scope and that will be ok.
  ///
  /// However! if you modify that variable, you might not see the changes
  /// reflected in hot reload, but it will in hot restart.
  ///
  /// If the variable is declared / initialized in within the method, then changes
  /// will be reflected in hot reload.
  ///
  /// You can, however, declare and init the variable outside of a method and
  /// then set them to the final value within the method.

  var leftButtonNumber = 2;
  var rightButtonNumber = 1;

  void updateNumbers() {
    leftButtonNumber = Random().nextInt(5) + 1;
    rightButtonNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      updateNumbers();
                    });
                  },
                  child: Image.asset('images/dice$leftButtonNumber.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      updateNumbers();
                    });
                  },
                  child: Image.asset('images/dice$rightButtonNumber.png'))),
        ],
      ),
    );
  }
}

/// Expanded Widgets will automatically resize themselves to fill the
/// remaining area.
///
/// If you wanted a different size ratio for expanded widgets,
/// you can use the 'flex' property.
