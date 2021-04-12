
import 'package:brrmobileapp/Screens/Home/homepage.dart';
import 'package:flutter/material.dart';
class Covid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage()),
                );
              },


             // child: Image.asset("assets/covid.jpg"),
            ),
            SizedBox(height: 20.0,),
            Card(
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,0,90,0),
                            child: Text("Covid-19 Resilience Program",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text ("In these unprecedented times, life has been turned upside down by the Covid-19 pandemic and employees are scrambling to figure out how to be productive remotely."
                          "\nWhile the rest of the world is learning this for the first time, But at BRR Softwares this is strictly business-as-usual. We are continuing to invest and grow."
                          "\nWe have equipped ourselves with right tools and technologies that support 100% work from Home, and yet produce a high quality deliverables for the success of our customers and partners."
                          "\nWe have opened-up several software positions(Sales, Marketing, HR, Software Development etc.) to support business continuity.",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 1.15,
                        ),
                        textAlign: TextAlign.justify,

                      ),
                    ),

                  ]),
            ),
            SizedBox(height: 10.0,),
            Card(child: Column(
                children: [
                  Padding(
                    padding:const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child:Row(
                      children: [
                        Text("New Job Roles:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                            child: Text('Apply here..!!',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                            onPressed: () {
                            /*  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Carrers()),
                              );*/
                            }
                        )
                      ],
                    ),

                  ),


                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text (" • Associate Engineer – Digital Marketing (Trainee) • Associate Systems Engineer - Trainee • Associate Software Engineer (Full-time) • Associate Software Engineer - Trainee • Corporate Trainer (Full-time) • Corporate Sales Executive / Business Development – IT Services.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.2,
                        letterSpacing: 1.15,
                      ),
                      textAlign: TextAlign.justify,


                    ),
                  ),

                ]),

            ),
            SizedBox(height: 10.0,),
            Card(child: Column(
                children: [
                  Padding(
                    padding:const EdgeInsets.fromLTRB(20, 20, 150, 0),
                    child:Row(
                      children: [
                        Text("Remote Operations:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text ("• We will continue to support the business without compromising the quality of the deliverables - softwares and services",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.2,
                        letterSpacing: 1.15,
                      ),
                      textAlign: TextAlign.justify,


                    ),
                  ),

                ]),

            ),
            SizedBox(height: 10.0,),
            Card(
              child: Column(
                children: [
                  Padding(
                    padding:const EdgeInsets.fromLTRB(20, 20, 150, 0),
                    child:Row(
                      children: [
                        const Divider(
                          color: Colors.red,
                          height: 50,
                          thickness: 10,
                        ),
                        Text("Employee Support :",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text ("• The Ops team should cater to the needs(Health - Physical, and Mental well being etc.) of the remote workers",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.2,
                        letterSpacing: 1.15,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 100,
            )
          ],

        ),
      ),

    );
  }
}
