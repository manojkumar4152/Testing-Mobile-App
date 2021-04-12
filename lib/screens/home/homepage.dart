import 'package:brrmobileapp/screens/Contact/contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon actionIcon = new Icon(Icons.search);
  Widget appBarTitle = new Text("");

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
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        //title: Text("BRR Softwares"),
        title: appBarTitle,

        actions: <Widget>[

          new IconButton(icon: actionIcon,onPressed:(){
            setState(() {
              if ( this.actionIcon.icon == Icons.search){
                this.actionIcon = new Icon(Icons.close);
                this.appBarTitle = new TextField(
                  style: new TextStyle(
                    color: Colors.white,

                  ),
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search,color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white)
                  ),
                );}
              else {
                this.actionIcon = new Icon(Icons.search);
               this.appBarTitle = new Text(" ");
              }


            });
          } ,),
        ],
      ),

      body: Center(

        child:  Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
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
                                          var index;
                                          if (index == 0) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()),
                                            );
                                          } else {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyCustomForm()),
                                            );
                                          }
                                        }),
                                    Text(e["name"]),
                                  ],
                                ),
                                // Text("OURE BEST SERVICES"),
                              )
                              .toList()),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(children: <Widget>[
              /*Text(
                "Our Best Services",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 4),
              ),*/
            ])),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: Card(
                 // margin: EdgeInsets.all(5),
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
                            'Mobile Application',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                "We can help you to develop a variety of software applications."),
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                "Our Kafka developers can handle large data sets and related streaming tasks."),
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                "Our MuleSoft resources can handle any type of integration challenges."),
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                                " We can help you understand your overarching goals and reqirements. "),
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
                            'AWS/Azure/GCP Services ', textAlign: TextAlign.center,

                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "We work with an ecosystem of Big Data platforms and PaaS providers"),
                            // onTap: () => print("ListTile"),
                          )
                        ])),
                        onTap: () => print("ListTile"),
                      ),
                    ],
                  ),
                ),
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
