import 'package:brrmobileapp/Screens/About/aboutus.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("BRR Softwares"),
        actions: [
          Icon(Icons.notifications),
        ],
      ),
      body: Center(
        child: Column(
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
      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(


              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.orange,
                    Colors.orangeAccent,
                  ])),

              child: Container(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: <Widget>[


                    CircleAvatar(
                      child: Icon(Icons.person,color: Colors.orange,),
                      radius: 30.0,
                    ),
                    SizedBox(height: 10.0),

                    Text('BRR SOFTWARES', style: TextStyle(fontSize: 20.0)),
                    SizedBox(height: 10.0),
                    Text('Embrace Change',
                        style: TextStyle(fontSize: 15.0)),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(

              title: Text(
                'Home',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading: Icon( Icons.home, color: Colors.black, size: 20.0),


            ),


            ListTile(
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                leading:
                Icon(Icons.contact_page, color: Colors.black, size: 20.0),
                onTap: (){
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => About()),

                  );
                }
            ),
            ListTile(

              title: Text(
                'Services',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading: Icon(Icons.settings,
                  color: Colors.black, size: 20.0),
            ),


            ExpansionTile(
              title: Text(
                'Careers',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading:
              Icon(Icons.business_center_rounded, color: Colors.black, size: 20.0),
              trailing:Icon(Icons.arrow_drop_down_outlined, color: Colors.black, size: 30.0,),
              children: [
                Column(
                  children:[
                    SizedBox(height: 10.0,),
                    GestureDetector(
                      onTap: (){
                        /*  Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Join()),

                        );

                       */
                      },
                      child: Text("Join Us",style: TextStyle(color: Colors.black,fontSize: 20.0),),
                    ),
                    SizedBox(height: 10.0,),
                    GestureDetector(
                      onTap: (){
                        /*  Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LOGIN()),

                        );

                       */
                      },
                      child: Text("CBP-Uniqueness",style: TextStyle(color: Colors.black,fontSize: 20.0),),
                    ),
                    SizedBox(height: 10.0,),
                    GestureDetector(
                      onTap: (){

                        /*  Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LOGIN()),

                        );

                       */
                      },
                      child: Text("CBP-BCA&BSc",style: TextStyle(color: Colors.black,fontSize: 20.0),),

                    ),
                    SizedBox(height: 10.0,),
                    GestureDetector(
                      onTap: (){
                        /*  Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LOGIN()),

                        );

                       */
                      },
                      child: Text("New Openings",style: TextStyle(color: Colors.black,fontSize: 20.0),),
                    ),

                  ],
                ),
              ],

            ),

            ListTile(
              title: Text(
                'Covid-19',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                /*  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Covid19()),
                );

               */
              },
              leading: Icon(Icons.masks, color: Colors.black, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Contact',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading:
              Icon(Icons.phone, color: Colors.black, size: 20.0),


            ),
            ListTile(
              title: Text(
                'Sign-Up',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading:
              Icon(Icons.create_outlined, color: Colors.black, size: 20.0),
            ),

            const Divider(color: Colors.black87, thickness: 2.0,),
            ListTile(
              title: Text(
                'Share the App',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading: Icon(Icons.share, color: Colors.black, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Rate the App',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading:
              Icon(Icons.star_rate_rounded, color: Colors.black, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              leading:
              Icon(Icons.miscellaneous_services, color: Colors.black, size: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
