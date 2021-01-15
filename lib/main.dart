import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Home()),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter!!!'),
        centerTitle: true,
        backgroundColor: Colors.red[200],
      ),
      //Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 26,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Set the alarm'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
      //This is for the text that is show in the middle
      body: Center(
        child: Image.asset('assets/images/b.jpg'),
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You just click');
        },
        child: Text('Wink'),
        backgroundColor: Colors.orange[400],
      ),
    );
  }
}
