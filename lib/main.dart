import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(const EduApp());
}

class EduApp extends StatelessWidget {
  const EduApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Class Organizer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Class Organizer"),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     tooltip: "Add Button",
      //     child: const Icon(Icons.add),
      //   ),
      //   floatingActionButtonLocation:
      //       FloatingActionButtonLocation.miniStartFloat,
      //   floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      //   // body: Text("home body text"),
      //   body: const Image(
      //     image: NetworkImage(
      //         'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      //   ),
      // ),
      home: const HomeScreen(),
    );
  }
}


