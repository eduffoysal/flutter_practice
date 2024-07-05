import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AboutScreen extends StatefulWidget{
  String quoteText;
  String authorName;
  AboutScreen({super.key, required this.quoteText, required this.authorName});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("About")),
      body: Center(  
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(child: Text(widget.quoteText,style: const TextStyle(fontSize: 20),)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 9.0),
          child: Align(alignment: Alignment.bottomRight, child: Text(widget.authorName,style: const TextStyle(fontSize: 14),)),
        ),
        ElevatedButton(child: const Text("Go Back"),onPressed: () {

          setState(() {
            widget.quoteText = "Farhad Foysal";
            widget.authorName = "Moni";
          });

          // Navigator.of(context).pop();
        },)
      ],),

    ),
    ));
  }
}