import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("iddy"),
        ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),
             ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
            ),
             ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            )
          ],
         ),
      ),
        body: const Center(
          child: Text("iddy")
          ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
            ],
            
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
            ),
             
    );
  }
}
