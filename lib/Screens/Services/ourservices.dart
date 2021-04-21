
import 'package:brrmobileapp/Screens/Covid19/covid19.dart';
import 'package:brrmobileapp/Screens/detailspage.dart';
import 'package:flutter/material.dart';
class Services extends StatefulWidget {

  @override
  _ServicesState createState() => _ServicesState();
}


class _ServicesState extends State<Services> {
  Color favIconColor = Colors.white;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body:SafeArea(
          child: Container(
        padding: EdgeInsets.all(20.0),
    child: Column(
    children: <Widget>[
    Container(
    width: double.infinity,
    height: 250,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(
    image: AssetImage('assets/h1_hero.jpg'),
    fit: BoxFit.cover
    )
    ),

   child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
    begin: Alignment.bottomRight,
    colors: [
    Colors.black.withOpacity(.4),
    Colors.black.withOpacity(.2),
    ]
    )
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
    Text("Services", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),


    SizedBox(height: 100,),

    ],
    ),
    ),
    ),
         SizedBox(height: 20,),
          Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  FocusedMenuHolder( onPressed:(){} , menuItems: <FocusedMenuItem>[
          FocusedMenuItem(title: Text("Open"),trailingIcon: Icon(Icons.open_in_new) ,onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Covid19()));
          }),],child: Card(


                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
          ),


      child:
      GestureDetector(
        onTap: () {
          setState(() {
            if (favIconColor == Colors.white) {
              favIconColor = Colors.red;
            } else {
              favIconColor = Colors.white;
            }
          }

          );


          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Covid19()),

          );
        },






                  child: Column(
                    children: [
                  Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/mobile.jpg"),
                            fit: BoxFit.cover
                        ),

                    ),

               child: Transform.translate(
                      offset: Offset(50, -50),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        child: Icon(Icons.bookmark_border, size: 25,),
                      ),

                    ),
                  ),
                      SizedBox(height: 2.0,),
                      Container(
                        child:Text('Mobile Application',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),

                      ),
                  ],

    ),

      ),
              ),
                  ),

                FocusedMenuHolder(onPressed:(){} , menuItems: <FocusedMenuItem>[
                  FocusedMenuItem(title: Text("Open"),trailingIcon: Icon(Icons.open_in_new) ,onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Covid19()));
                  }),], child:
                  Card(


                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    color: Colors.white,

                    child:
                    GestureDetector(
                      onTap: (){

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Details()),
                        );
                      },



                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/mobile.jpg"),
                                fit: BoxFit.cover
                            ),

                          ),

                          child: Transform.translate(
                            offset: Offset(50, -50),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border, size: 25,),
                            ),

                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Container(



                          child:  Text('Kafka Development',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),

                          ),


                        ),



      ],

                    ) ,


                  ),
                  ),
                ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    color: Colors.white,
                    child:
                    GestureDetector(
                      onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Covid19()),

                        );
                      },

                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/mobile.jpg"),
                                fit: BoxFit.cover
                            ),

                          ),

                          child: Transform.translate(
                            offset: Offset(50, -50),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border, size: 25,),
                            ),

                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Container(
                          child:Text('MuleSoft Development',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                        ),
                      ],

                    ) ,

                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    color: Colors.white,
                    child:
                    GestureDetector(
                      onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Covid19()),

                        );
                      },

                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/mobile.jpg"),
                                fit: BoxFit.cover
                            ),

                          ),

                          child: Transform.translate(
                            offset: Offset(50, -50),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border, size: 25,),
                            ),

                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Container(
                          child:Text('SalesForce',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                        ),
                      ],

                    ) ,

                  ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    color: Colors.white,
                    child:
                    GestureDetector(
                      onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Covid19()),

                        );
                      },
                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/mobile.jpg"),
                                fit: BoxFit.cover
                            ),

                          ),

                          child: Transform.translate(
                            offset: Offset(50, -50),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border, size: 25,),
                            ),

                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Container(
                          child:Text('AWS/AZURE/GCP Services',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                        ),
                      ],

                    ) ,

                  ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    color: Colors.white,
                    child:
                    GestureDetector(
                      onTap: (){

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Covid19()),

                        );
                      },
                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/mobile.jpg"),
                                fit: BoxFit.cover
                            ),

                          ),

                          child: Transform.translate(
                            offset: Offset(50, -50),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border, size: 25,),
                            ),

                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Container(
                          child:Text('BigData Application',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),

                        ),
                      ],

                    ) ,

                  ),
                  ),
            ],
              ),
          ),
          ],
          ),

        ),
    ),


    );
  }
}

