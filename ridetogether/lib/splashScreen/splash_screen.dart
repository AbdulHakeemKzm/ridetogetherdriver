import 'dart:async';

import 'package:ridetogether/authentication/login_screen.dart';
import 'package:ridetogether/authentication/signup_screen.dart';
import 'package:ridetogether/global/global.dart';
import 'package:ridetogether/mainScreens/main_screen.dart';
import 'package:flutter/material.dart';


class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {
    Timer(const Duration(seconds: 3), () async
    {
      if(await fAuth.currentUser != null)
      {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      }
      else
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    
    startTimer();
  }
  
  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [

              Icon(
                Icons.drive_eta_rounded,
                color: Colors.yellow,
                size: 80,
              ),
              Text(style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
                  'Ride Together Driver'
              ),

              Text(style: TextStyle(
              ),
                  " "
              ),

            ],
          ),
        ),
      ),
    );
  }
}
