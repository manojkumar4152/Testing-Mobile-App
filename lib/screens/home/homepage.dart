import 'package:brrmobileapp/screens/Contact/contact.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var data = [
      {'name': 'Home', 'color': Colors.blue, 'icon': Icons.home},
      {'name': 'Services', 'color': Colors.red, 'icon': Icons.room_service},
      {'name': 'About', 'color': Colors.green, 'icon': Icons.person},
      {
        'name': 'Careers',
        'color': Colors.amber,
        'icon': Icons.business_center_rounded
      },
      {'name': 'Covid-19', 'color': Colors.orange, 'icon': Icons.masks_rounded},
      {'name': 'Contact', 'color': Colors.orange, 'icon': Icons.phone},
    ];
    // TODO: implement build
    return Scaffold(

      body: Center(

        child:  Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        spacing: 30.0,
                        // gap between adjacent chips
                        runSpacing: 20.0,
                        // gap between lines
                        children: data
                            .map(
                              (e) => Column(
                            children: <Widget>[
                              InkWell(
                                child: ClipOval(
                                  child: Container(
                                    color: e["color"],
                                    child: SizedBox(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          e["icon"],
                                          color: Colors.white,
                                          size: 20,
                                        )),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyCustomForm()),
                                  );
                                }
                              ),
                              Text(e["name"]),
                            ],
                          ),
                          // Text("OURE BEST SERVICES"),
                        )
                            .toList()),
                  ),
                ],
              ),
            ),
            Expanded(child: ListView(
                children: <Widget>[Text("Our Best Services", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 4),),])),

            Expanded(
              flex: 2,

              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,

                children: <Widget>[
                  // Text("Our Best Services", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 4),),
                  InkWell(
                    child: Card(
                        child: Column(children: [
                          Image.asset('assets/mobile.jpg'),
                          Text(
                            'Mobile Application Development',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "We can help you to develop a variety of software applications matching your bussiness demands."),
                          ),
                        ])),
                    onTap: () => print("ListTile"),
                  ),
                  InkWell(
                    child: Card(
                        child: Column(children: [
                          Image.asset('assets/mobile.jpg'),
                          Text(
                            'Kafka Development',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Our expert resources and dedicated Consultants will work closely wit your tem to understand your overarching goals and requirements"),
                            //onTap: () => print("ListTile"),
                          )
                        ])),
                    onTap: () => print("ListTile"),
                  ),
                  InkWell(
                    child: Card(
                        child: Column(children: [
                          Image.asset('assets/mulesoft.jpg'),
                          Text(
                            'MuleSoft Development',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Our certified MuleSoft resources can handle any type of integration challenges that limit your IT."),
                            //onTap: () => print("ListTile"),
                          )
                        ])),
                    onTap: () => print("ListTile"),
                  ),
                  InkWell(
                    child: Card(
                        child: Column(children: [
                          Image.asset('assets/mulesoft.jpg'),
                          Text(
                            'SalesForce ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Our expert resources and dedicated Consultants will work closely wit your tem to understand your overarching goals and requirements"),
                            // onTap: () => print("ListTile"),
                          )
                        ])),
                    onTap: () => print("ListTile"),
                  ),
                  InkWell(
                    child: Card(
                        child: Column(children: [
                          Image.asset('assets/mulesoft.jpg'),
                          Text(
                            'AWS/Azure/GCP Services ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Our expert resources and dedicated Consultants "),
                            // onTap: () => print("ListTile"),
                          )
                        ])),
                    onTap: () => print("ListTile"),
                  ),
                  InkWell(

                    child: Card(
                      //  color: Colors.deepOrange,
                        child: Column(children: [
                          Image.asset('assets/mulesoft.jpg'),
                          Text(
                            'BigData Application',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Our expert resources and dedicated Consultants will work closely wit your tem to understand your overarching goals and requirements"),
                            // onTap: () => print("ListTile"),
                          )
                        ])),
                    onTap: () => print("ListTile"),
                  ),
                ],
              ),
            ),
            /* Expanded(
                child: ListView(children: <Widget>[
              Stack(children: <Widget>[
                // Image.asset('assets/h1_hero.jpg'),
              ])
            ]))*/
          ],
        ),
      ),
      //Drawer handled by sindhu


                );


  }
}



