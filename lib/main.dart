import 'package:flutter/material.dart';
import 'dart:math';
List _array = [];
num Pow = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pow number 2',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pow number 2'),
        ),
        body: ListView.builder(
          itemBuilder: (context, i) {
            print('num $i : odd = ${i.isOdd}');
            if (i.isOdd) return Divider();
            final int index = i ~/ 2;
            Pow = pow(2, index);
            print('index $index');
            print('length ${_array.length}');
            if (index >= _array.length)
              _array.addAll(['$index', '${index + 1}', '${index + 2}']);
            return ListTile(title: Text('$Pow'));
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

