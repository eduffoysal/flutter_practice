import 'package:educlass/screen/body_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  mySnackBar(String message, BuildContext context) {
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
            mySnackBar("Yes Pressed", context);
            Navigator.of(context).pop();
          }, child: const Text("Yes")),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: const Text("No"))
        ],title: Text(type),content: Text(message),));
      }
    );
  }

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(2),
      backgroundColor: Colors.lightBlueAccent,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      shadowColor: const Color.fromARGB(31, 236, 226, 226),
    );

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Practice Screen"),
        titleSpacing: 0,
        centerTitle: false,
        toolbarHeight: 50,
        toolbarOpacity: 0.8,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 218, 243, 105),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Search", context);
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Image", context);
            },
            icon: const Icon(Icons.image),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Email", context);
            },
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Settings", context);
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Center(
              child: DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.amber),
                    accountName: Text("User Name",style: TextStyle(color: Colors.black),),
                    accountEmail: Text("Email"),
                    currentAccountPicture: Center(
                      child: Image.network(
                          "https://imgs.search.brave.com/TZgMWzeLzkUlAQizn_BEwwAJhSIh5SkIvnqk4FW8OE0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pY29u/YXBlLmNvbS93cC1j/b250ZW50L3BuZ19s/b2dvX3ZlY3Rvci9m/bHV0dGVyLWxvZ28u/cG5n"),
                    ),
                    onDetailsPressed: () {
                      mySnackBar("My Profile", context);
                    },
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
              onTap: () {
                mySnackBar("Inbox", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                mySnackBar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bloodtype),
              title: Text("Blood Bank"),
              onTap: () {
                mySnackBar("Blood Bank", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Website"),
              onTap: () {
                mySnackBar("Website", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                mySnackBar("Logout", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Center(
              child: DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.amber),
                    accountName: Text("User Name",style: TextStyle(color: Colors.black),),
                    accountEmail: Text("Email"),
                    currentAccountPicture: Center(
                      child: Image.network(
                          "https://imgs.search.brave.com/TZgMWzeLzkUlAQizn_BEwwAJhSIh5SkIvnqk4FW8OE0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pY29u/YXBlLmNvbS93cC1j/b250ZW50L3BuZ19s/b2dvX3ZlY3Rvci9m/bHV0dGVyLWxvZ28u/cG5n"),
                    ),
                    onDetailsPressed: () {
                      mySnackBar("My Profile", context);
                    },
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
              onTap: () {
                mySnackBar("Inbox", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                mySnackBar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.bloodtype),
              title: Text("Blood Bank"),
              onTap: () {
                mySnackBar("Blood Bank", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Website"),
              onTap: () {
                mySnackBar("Website", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                mySnackBar("Logout", context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("Home", context);
          } else if (index == 1) {
            mySnackBar("Inbox", context);
          } else if (index == 2) {
            mySnackBar("Profile", context);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 20,
        backgroundColor: const Color.fromARGB(255, 226, 195, 101),
        onPressed: () {
          mySnackBar("Floating Button Pressed", context);
          if(!context.mounted) return;
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const BodyScreen()),
          );
        },
        tooltip: "Practice",
        child: const Icon(Icons.boy_rounded),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 2,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(color: Colors.lightGreen,width: 4),
                      ),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.fromLTRB(2,3,2,1),
                      child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 2,),
                const Flexible(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "First Name",border: OutlineInputBorder(),),
                  ),

                )),
                const Flexible(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Last Name",border: OutlineInputBorder(),),
                  ),
                  
                )),
                const Flexible(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder(),),
                  ),
                  
                )),
                Flexible(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){

                  },style: buttonStyle, child: const Text("Submit"),),
                  
                ))

              ],
            ),
                    ),
                  ],
                ),
                const SizedBox(height: 6,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){
                      mySnackBar("TextButton", context);
                    }, child: const Text("TextButton")),
                    ElevatedButton(onPressed: (){
                      mySnackBar("ElevatedButton", context);
                      myAlertDialouge("Are you sure?", "Alert for Deletion", context);
                    },style: buttonStyle, child: const Text("ElevatedButton"),),
                    OutlinedButton(onPressed: (){
                      mySnackBar("OutlinedButton", context);
                    }, child: const Text("OutlinedButton"))
                  ],
                ),

              ],
            ),
            const SizedBox(height: 2,),

            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                                Text("foysal "),
              ],
            ),

          ],
        ),
      ),
      ),
    ));
  }
}
