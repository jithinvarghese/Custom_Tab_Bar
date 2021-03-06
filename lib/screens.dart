import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text("Open Secondary page"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewPage(),
            ),
          );
        },
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  // final Function openSettings;
  // const SettingsScreen({Key key, this.openSettings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Push other Settings"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NewPage(),
            ),
          );
        },
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Screen',
        ),
      ),
      body: Container(
        child: FlatButton(
          child: Text("Push new Screen"),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NewPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
