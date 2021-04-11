import 'package:brrmobileapp/Screens/Home/homepage.dart';
import 'package:flutter/material.dart';

import 'About/aboutus.dart';
import 'Contact/contact.dart';
import 'Covid19/covid19.dart';
class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      backgroundColor: Colors.deepOrange,
      title: Text("BRR Softwares"),
      actions: [
        Icon(Icons.notifications),

      ],
    ),
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
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Covid19()),
                );


              },
              leading: Icon(Icons.masks, color: Colors.black, size: 20.0),
            ),
            ListTile(
              title: Text(
                'Contact',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  MyCustomForm()),

                );


              },

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
      body: HomePage(),
    );
  }
}




