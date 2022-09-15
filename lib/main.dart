import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screen_one.dart';
import 'package:myapp/Screen_tow.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/download.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      color: Color.fromARGB(255, 130, 231, 109),
                      width: 15,
                    )),
                child: Container(
                  color: Color.fromARGB(255, 222, 207, 207),
                  child: Text("welcom to our travel",
                      style: TextStyle(fontSize: 50)),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shadowColor: Colors.purple,
                          elevation: 20),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Scree_one();
                          },
                        ));
                      },
                      child: Text(
                        "your prefrence page",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shadowColor: Colors.purple,
                      elevation: 20),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Screen_tow();
                      },
                    ));
                  },
                  child: Text(
                    "full your information",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
