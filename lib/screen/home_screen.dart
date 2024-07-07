import 'dart:collection';

import 'package:educlass/screen/practice_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:educlass/screen/about_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
          
                var url = Uri.https('type.fit', '/api/quotes');
          
                try {
                  var response = await http.get(url);
                  if (response.statusCode == 200) {
                    var data = jsonDecode(response.body);
          
                    if (data is List && data.isNotEmpty && data[0] is Map && data[0].containsKey('text')) {
                      String quoteText = data[0]['text'];
                      String authorName = data[0]['author'] ?? "Unknown";
          
                      print('Quote: $quoteText');
                      print('Author: $authorName');
          
          
                      if (!context.mounted) return;
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AboutScreen(quoteText: quoteText, authorName: authorName)),
                      );
                      
                    } else {
                      print('Unexpected data format');
                    }
          
          
                  } else {
                    print('Failed to load quotes. Status code: ${response.statusCode}');
                  }
                } catch (e) {
                  print('An error occurred: $e');
                }
          
              // if (!context.mounted) return;
              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const AboutScreen()));
            },
            child: const Text("Get Quote"),
          ),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: (){
              if (!context.mounted) return;
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const PracticeScreen()));
          },
          child: const Text("Practice Screen"),
          ),
          
        ],
      ),)
      // Stack(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       height: 200,
      //       width: 200,
      //       color: Colors.yellow,
      //     )
      //   ],
      // ),
    );
  }
}
