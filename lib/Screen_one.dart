import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class Scree_one extends StatefulWidget {
  const Scree_one({super.key});

  @override
  State<Scree_one> createState() => _Scree_oneState();
}

class _Scree_oneState extends State<Scree_one> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/download.jpg"), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 241, 219, 81),
                      shadowColor: Color.fromARGB(255, 240, 245, 111),
                      elevation: 20),
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  },
                  child: Text(
                    "back to home page",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
                  SizedBox(height: 100,),
              Container(color: Color.fromARGB(255, 237, 220, 220),
                child: Text(
                  "Where you want to travel ?",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              RadioListTile(
                  title: Text(
                    "Jordan",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: Text(
                    "Eg.Wadi Ram",
                    style: TextStyle(color: Colors.pink),
                  ),
                  value: "Jordan",
                  groupValue: city,
                  onChanged: (val) {
                    setState(() {
                      city = val.toString();
                    });
                  }),
              RadioListTile(
                  title: Text(
                    "UAE",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: Text(
                    "Eg.Dubai",
                    style: TextStyle(color: Colors.pink),
                  ),
                  value: "UAE",
                  groupValue: city,
                  onChanged: (val) {
                    setState(() {
                      city = val.toString();
                    });
                  }),
              RadioListTile(
                  title: Text(
                    "Egypt",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: Text(
                    "Eg.Sharm Elshaikh",
                    style: TextStyle(color: Colors.pink),
                  ),
                  value: "Egypt",
                  groupValue: city,
                  onChanged: (val) {
                    setState(() {
                      city = val.toString();
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
