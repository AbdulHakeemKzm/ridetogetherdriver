import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Models/user_model.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;
User? currentFirebaseUser;

UserModel? userModelCurrentInfo;