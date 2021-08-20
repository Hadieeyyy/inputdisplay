import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link/link.dart';
import 'package:url_launcher/url_launcher.dart';


final input = TextEditingController();
String error = "";

popDialog(BuildContext context){
  return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          backgroundColor: Color(0xff1a2d2b),
          content: Text("Oops could not load URL",
              style: TextStyle(
                color: Color(0xffbb6765),
                fontSize: 20.0,
              )
          ),

        );
      }

  );
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INPUT DISPLAY"),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.0,10.0,8.0,0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Center(
                        child: Image.asset('assets/hng.png',
                          width: 40.0, height: 40.0,

                        ),
                      ),
                    ),

                  ),

                  SizedBox(
                    width: 9.0,
                  ),
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Center(
                        child: Image.asset('assets/i4g.jpg',
                          width: 40.0, height: 40.0,

                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                    width: 9.0,
                  ),
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Center(
                        child: Image.asset('assets/zuri.png',
                          width: 40.0, height: 40.0,

                        ),
                      ),
                    ),

                  ),


                ],
              ),
              Text("Enter something"),
              SizedBox(height: 20.0),
              TextField(
                controller: input,

              ),
              SizedBox(height: 20.0),
              ElevatedButton(onPressed: ()
                {
                 // display = input.text();
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Display()
                ),
              );
                  },
                  child: Text("Display")),
              SizedBox(
                height: 50.0
              ),


              Link(
                child: Text('Go to Zuri page', style: TextStyle(
                  decoration: TextDecoration.underline, // add add underline in text
                ),),
                url: 'https://internship.zuri.team/',

              ),
              SizedBox(height: 20.0),
              Link(
                child: Text('Go to HNG page', style: TextStyle(
                  decoration: TextDecoration.underline, // add add underline in text
                ),),
                url: 'https://hng.tech/',

              ),
              SizedBox(height: 20.0),
              Link(
                child: Text('Go to i4g page', style: TextStyle(
                  decoration: TextDecoration.underline, // add add underline in text
                ),),
                url: 'https://ingressive.org/',

              ),
              SizedBox(height: 20.0),

            ],
          ),
        ),
      ),
    );
  }
}

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("INPUT DISPLAY")
      ),
      body: Center(
        child: Text(input.text),
      ),
    );
  }
}


