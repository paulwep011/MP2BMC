import 'package:flutter/material.dart';

void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC Flutter"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(builder:(context)=> Center(
                child: Column(children: [
                  Text(
                    'Hello Flutter',
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  ),
                  Text(
                    'Discover the Flutter',
                    style: TextStyle(
                        fontSize: 20, color: Colors.deepPurpleAccent),
                  ),
                    Image.network('https://th.bing.com/th/id/OIP.7ITF2gx8_a3s4NbnDOpZzAHaHa?rs=1&pid=ImgDetMain',
                        height: 350,
                    ),
                  ElevatedButton(
                      child: Text('Contact Us'),
                  onPressed: () => contactUs(context),
                  )
                ]
                )))));
  }
}


void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at helloWorld.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),

            )
          ],
        );
      },
  );
}