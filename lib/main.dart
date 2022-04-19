import 'package:flutter/material.dart';
import 'package:posttest3_airlanggarahimahputra_1915016037/newHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: newHome(),
    );
  }
}