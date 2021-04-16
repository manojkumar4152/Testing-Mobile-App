

import 'package:brrmobileapp/Screens/Services/ourservices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'About/aboutus.dart';

class Details extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_sharp,color: Colors.white,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>Services()),
              );
            },
          ),
        ],

      ),
      body: SingleChildScrollView(
        child:Column(
          children: [

            Stack(
              children:[
                Container(
                  margin:EdgeInsets.only(top:size.height *0.3),
                  height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )
                    ),
                ),

       Padding(padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              "Mobile" "\nApplication",
              style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 40.0),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                RichText(
                  text:TextSpan(
                      children: [

                        TextSpan(text: "Price\n",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold)),
                        TextSpan(text:"\Rs-50000",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                        ),
                      ]
                  ),

                ),
                SizedBox(width:100.0 ),
              Expanded(child: Image.asset("assets/mobile.jpg",
              fit: BoxFit.fill),
              ),
              ],
            ),

               SizedBox(height: 40,),

                  Column(
                    children: [


        Container(
          padding: const EdgeInsets.fromLTRB(10,10, 10,10),

        child:
        Text(" ",
          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,

                  ),

                        ),
                      SizedBox(height: 20.0,),

                      Cardholder(),
                  SizedBox(height:40.0),
                  Row(
                    children: <Widget>[
                  Container(
                  margin: EdgeInsets.only(right: 20.0),
      height: 50,
      width: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color:Colors.orange ,
        ),
      ),
      child: IconButton(
        icon: Icon(Icons.shopping_cart_sharp,color: Colors.orange,),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>Services()),
          );
        },
      ),
      ),
                      SizedBox(height:50),



                         SizedBox(
                      width: 250,
                        child:FlatButton(
                        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18)),
    color: Colors.blue,
    onPressed: () {},
    child: Text(
    "Buy  Now".toUpperCase(),
    style: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    color: Colors.white,
                        )
                      )

                        ),
    ),

    ]
    ),

    ],
    ),
         ]
       ),
       ),
      ]
    ),
    ]),
      ),

    );
    }
}

class Cardholder extends StatefulWidget {
  @override
  _CardholderState createState() => _CardholderState();
}

class _CardholderState extends State<Cardholder> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 50,
      child:     OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}