
import 'package:flutter/material.dart';

import '../sidenavigationbar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       backgroundColor: Colors.grey[100],

      body:  SingleChildScrollView(
        child:Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/about.png'),
                      fit: BoxFit.cover
                  )
              ),

              child:
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SideMenuBar()),
                );
              },





            ),
            ),
            SizedBox(height: 20.0,),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                  children: [
                    Padding(
                      padding:const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child:Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.red,
                              height: 5,
                              thickness: 2,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 220, 0),
                              child:
                              Text("Our Mission",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),)
                          )],

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text ("To become one of the most trusted software development partner for our esteemed customers and business."
                          "\nWe shall be part of our customer growth and help them acheive business results by being agile and co-operative",

                        style: TextStyle(
                            fontSize: 16,
                            height: 1.2,
                            letterSpacing: 1.15,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                  ]),
            ),
            SizedBox(height: 10.0,),
            Card( shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
              child: Column(
                children: [
                  Padding(
                    padding:const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child:Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.red,
                            height: 10,
                            thickness: 2,
                          ),
                        ),
                        Padding(padding:
                        const EdgeInsets.fromLTRB(0, 0, 240, 0),
                            child:
                            Text("Our Vision",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,


                              ),)
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text ("To build a team of enthusiastic software developers and engineers to tackle any kind of IT challenge."
                        "\nBecome a world's renowned software company.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 1.15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify
                    ),
                  ),


                ],
              ),
            ),

          ]
      ),
      ),
      ),

    );
  }
}