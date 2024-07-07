import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  mySnackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
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
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ],
        ),
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
        },
        tooltip: "Practice",
        child: const Icon(Icons.add),
      ),
    ));
  }
}
