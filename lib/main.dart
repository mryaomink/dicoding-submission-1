import 'package:flutter/material.dart';
import 'package:my_microblog/yao_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Micro Blog',
      theme: ThemeData(brightness: Brightness.dark),
      home: YaoApp(),
    );
  }
}

class YaoApp extends StatefulWidget {
  @override
  _YaoAppState createState() => _YaoAppState();
}

class _YaoAppState extends State<YaoApp> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: textController,
                decoration: InputDecoration(hintText: 'Enter Your Name'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                YaoHome(textController: textController.text)));
                  });
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: Text(
                  'Save & Continue',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
