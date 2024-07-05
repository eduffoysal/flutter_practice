import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget{
  String quoteText;
  String authorName;
  AboutScreen({super.key, required this.quoteText, required this.authorName});


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Center(  
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Text(quoteText,style: const TextStyle(fontSize: 20),)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 9.0),
          child: Align(alignment: Alignment.bottomRight, child: Text(authorName,style: const TextStyle(fontSize: 14),)),
        ),
        ElevatedButton(child: const Text("Go Back"),onPressed: () {
          Navigator.of(context).pop();
        },)
      ],),

    ),
    ));
  }
  
}