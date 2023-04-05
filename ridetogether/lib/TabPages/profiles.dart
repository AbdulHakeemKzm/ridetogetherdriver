import 'package:flutter/material.dart';
import 'package:ridetogether/Authentication/login.dart';
import 'package:ridetogether/Widgets/about.dart';

import '../Global/global.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: 220,
        child: Drawer(
          child: ListView(
          children: [
            //drawer header
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 160,
                    //color: Colors.grey,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                        //color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.person_outlined,
                            size: 100,
                            color: Colors.black,
                          ),
                          const SizedBox( width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text(
                              //   widget.name.toString(),
                              //   style:const TextStyle(
                              //     fontSize: 16,
                              //     color:Colors.black,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),

                              const SizedBox( width: 10),
                              // Text(
                              //   widget.email.toString(),
                              //   style:const TextStyle(
                              //     fontSize: 14,
                              //     color:Colors.black,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // const Divider(
            //   height: 20,
            //   color: Colors.black,
            //),
            const SizedBox(
              height: 10,
            ),
            //body
            GestureDetector(
              onTap: ()
              {

              },
              child: const ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.black,),
                title: Text(
                  "History",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),



            GestureDetector(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder:(c)=>AboutPage()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.black,),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),


            GestureDetector(
              onTap: ()
              {

              },
              child: const ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,),
                title: Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: ()
              {

              },
              child: const ListTile(
                leading: Icon(
                  Icons.car_repair,
                  color: Colors.black,),
                title: Text(
                  "My Car",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: ()
              {
                fAuth.signOut();
                Navigator.push(context, MaterialPageRoute(builder:(c)=>const Login()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.black,),
                title: Text(
                  "Sign Out",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
