import 'package:flutter/material.dart';
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
        child: Form(
          key: formKey,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                  'assets/contactus.png', height: 150, fit: BoxFit.fill),
              Card(
                  child: Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Column(
                                children: [
                                  Text("Get in Touch", textAlign: TextAlign
                                      .justify,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),)

                                ]
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Your Name",
                            ),

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Your Name";
                              }
                              return null;
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email",
                            ),
                            validator: (value) {
                              if (value.isEmpty ||
                                  !RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value)) {
                                return "Please Enter Valid Email";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Subject",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please Enter Subject";
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Message",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Please enter Message ";
                              }
                              return null;
                            },
                          ),
                        ),
                        new Container(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: new ElevatedButton(
                            child: const Text("Submit"),
                            onPressed: () {
                              if (formKey.currentState.validate()) {
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(
                                    content: Text("Data is sent sucessful")));
                              }
                            },

                          ),
                        )
                      ]
                  )

              ),
              Card(
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                        child: Column(
                            children: [
                              Text("Contact Us", textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                ),)

                            ]
                        )
                    ), //1
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                      child: Row(
                          children: [
                            Icon(Icons.home),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10, 20, 20, 0),
                                child: Column(
                                  children: [
                                    Text(
                                      " Kondapur, Hitec City.                  ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(" Hyderabad, Telengana 500081",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                )
                            ), //2


                          ]
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                      child: Row(
                          children: [
                            Icon(Icons.contact_page),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10, 20, 20, 0),
                                child: Column(
                                  children: [
                                    Text("+914040888078 Landline   ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text("+919000351678 WhatsApp",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        //fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                      child: Row(
                          children: [
                            Icon(Icons.contact_page),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10, 20, 20, 0),
                                child: Column(
                                  children: [
                                    Text("+914035585068 Landline   ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        // fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text("+919676813159 WhatsApp",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        // fontWeight: FontWeight.normal,
                                      ),),
                                  ],
                                )
                            ),
                          ]
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
                      child: Row(
                          children: [
                            Icon(Icons.mail),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10, 20, 20, 0),
                                child: Column(
                                  children: [
                                    Text("marketing@brrsoftwares.com",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        //fontWeight: FontWeight.normal,
                                      ),),
                                    Text("Send us your query anytime!   ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                        // fontWeight: FontWeight.normal,
                                      ),),
                                  ],
                                )
                            ),
                          ]
                      ),
                    ),
                  ]
                  )
              )
            ],
          ),

        )
    )
    );
  }
}