import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Unique(),
  ));
}

class Unique extends StatefulWidget {
  @override
  _UniqueState createState() => _UniqueState();
}

class _UniqueState extends State<Unique> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/unique.png"),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                buildDivider(),
                Divider(
                  color: Colors.red,
                  height: 100,
                  thickness: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                  child: Text(
                    "A Unique Career Building Program",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 30, 0),
            child: Text(
              "Our Company has introduced a six months intense career building programme to lay the IT foundation for the young and enthusiastic team members."
                  "\n"
                  "\nThe fresh engineers can take advantage of this program to build industry oriented technical skills and make themselves consumable as an individual contributors to the organization.",
              style: TextStyle(height: 1.2, letterSpacing: 1.0, fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
            child: Text(
              "Qualification :",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.indigo,
              ),
              // textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              " • Any Graduate / Post Graduate - 2020 Passout",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 160, 0),
            child: Text(
              "Employment Type :",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 250, 0),
            child: Text(
              "• Full time",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 210, 0),
            child: Text(
              "Experience :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "• 0+ years of software development experience",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  "Apply directly to",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "careers@brrsoftwares.com",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.start,
              )
            ],
          ),

          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text('BCA & BSE GRADUATES'),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          )
        ]),
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.red,
        height: 2,
        thickness: 2,
      ),
    );
  }
}
