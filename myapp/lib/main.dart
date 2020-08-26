import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //specify what will be in the home screen when we load this app
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image.network(
            'https://lh3.googleusercontent.com/proxy/DO7Ob_jZ_TeDrTURzWNN26XW9600gaVh2EIprxhxwZJKAJFSnFbmYgVl9iCQmPc8Sjf8YZpke-5RE75Ouww147Qqulk3sm9uBAFthagbAVJ57Xx-5HUe_l9LdK2EeQHC5mHbjVw'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
