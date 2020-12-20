

// Importing files
//import 'package:test/test.dart';
import 'package:startup_namer/units_choice.dart';
//import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/**
 * The test writen using the pub.dev -> test libery
 * https://pub.dev/packages/test
 */
void main() {

  var user_choice = new choice();

  group("Test  behaviors of choosing a unit", (){

    test('TTest the behavior of choosing the right unit', () {
      expect(user_choice.makeChoice("Handasa"), true);
    });

    test('Test the behavior of choosing the not preferred unit', () {
      expect(user_choice.makeChoice("Mahan"), false);
    });

    test('Test the behavior of choosing the not preferred unit', () {
      expect(user_choice.makeChoice("Mahan"), true);
    });

  });

}

