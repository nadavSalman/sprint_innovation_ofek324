// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
// import 'dart:developer' as developer;//for logs ...
import 'package:startup_namer/random_words.dart';


void main() => runApp(MyApp());


//The main app widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        fontFamily: 'Rock Salt',
        primaryColor: Colors.teal,
      ),
      home: RandomWords(),
    );
    
    
  }
}



