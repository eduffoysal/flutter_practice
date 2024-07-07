import 'package:flutter/material.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  mySnackBar(String message,BuildContext context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(label: "Close",onPressed: () {
          // dismiss with animation
          ScaffoldMessenger.of(context).hideCurrentSnackBar();

          // dismiss without animation
          // ScaffoldMessenger.of(context).removeCurrentSnackBar();

          // remove all snackbars currently in queue, dismiss current snackbar with animation
          // ScaffoldMessenger.of(context).clearSnackBars();

        },),
      ),
      
    );
  }
  
  myAlertDialouge(String message,String type,BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(child: AlertDialog(actions: [
          TextButton(onPressed: (){

          }, child: Text("Yes")),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("No"))
        ],title: Text(type),content: Text(message),));
      }
    );
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: const Text("BodyScreen"),
        backgroundColor: const Color.fromARGB(255, 218, 243, 105),
        actions: [
          IconButton(onPressed: (){
            mySnackBar("Settings Button", context);
          }, icon: const Icon(Icons.settings))

        ],
      ),
    ));
  }
}
