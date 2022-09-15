import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
class Screen_tow extends StatefulWidget {
  const Screen_tow({super.key});

  @override
  State<Screen_tow> createState() => _Screen_towState();
}

class _Screen_towState extends State<Screen_tow> {
    List item = ["1 person", "2 person", "2-5 person", "6-8 person"];
  String value = "1 person";
  String c = "";
  bool pets = false;
  bool medicine = false;
  bool weapon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/download.jpg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 237, 220, 220),
                child: Text(
                  "pleas enter your information",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "How many person ?",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 237, 81, 133)),
              ),
              DropdownButton(
                  value: value,
                  items: item
                      .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      value = val.toString();
                    });
                  }),
              Text(
                "pleas select your class!",
                style: TextStyle(fontSize: 30, color: Colors.pink),
              ),
              RadioListTile(
                  title: Text(
                    "Business",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: Text(
                    "Hot!!! Only 200 per person",
                    style: TextStyle(color: Colors.pink),
                  ),
                  value: "Business",
                  groupValue: c,
                  onChanged: (val) {
                    setState(() {
                      c = val.toString();
                    });

                    ;
                  }),
              RadioListTile(
                  title: Text(
                    "Economy",
                    style: TextStyle(color: Colors.amber),
                  ),
                  subtitle: Text(
                    "Hot!!! 150 per person",
                    style: TextStyle(color: Colors.pink),
                  ),
                  value: "Economy",
                  groupValue: c,
                  onChanged: (val) {
                    setState(() {
                      c = val.toString();
                    });

                    ;
                  }),
              Text(
                "pleas select whatever you have during  the trip ",
                style: TextStyle(fontSize: 20, color: Colors.pink),
              ),
              CheckboxListTile(secondary: Icon(Icons.pets),
                title: Text("pets"),
              subtitle: Text("Eg: cat,dog"),
                  value: pets,
                  onChanged: (val) {
                       setState(() {
                      pets = val!;
                    });
                  }),
                  CheckboxListTile(secondary: Icon(Icons.pets),
                title: Text("Medicine"),
              subtitle: Text("Eg: Capsules,Suppositories"),
                  value: medicine,
                  onChanged: (val) {
                    setState(() {
                      medicine = val!;
                    });
                  }),
                  CheckboxListTile(secondary: Icon(Icons.pets),
                title: Text("Weapon"),
              subtitle: Text("Eg: artillery,chemical weaponry"),
                  value: weapon,
                  onChanged: (val) {
                    setState(() {
                      weapon = val!;
                    });
                  }),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      shadowColor: Colors.purple,
                      elevation: 20),
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  },
                  child: Text(
                    "Go back to home page",
                    style: TextStyle(fontSize: 15, color: Colors.purple),
                  ))
            ],
          ),
        ),
      ),
    );;
  }
}