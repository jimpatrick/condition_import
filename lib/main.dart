import 'package:flutter/material.dart';
import 'package:objectbox_test/impl_native_db.dart' if(dart.library.html) 'package:objectbox_test/impl_web_db.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Objectbox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    String txtDb = ImplDb().db;
    return Scaffold(
      body: Center(child: Text(txtDb)),
    );
  }
}
