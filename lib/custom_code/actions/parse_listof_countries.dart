// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:xml/xml.dart';

Future<List<String>> parseListofCountries(String xmlResponse) async {
  final document = XmlDocument.parse(xmlResponse);
  final countryList = <String>[]; // Create an empty list to hold the countries

  // Find all elements with tag 'm:tCountryCodeAndName'
  final countryElements = document.findAllElements('m:tCountryCodeAndName');
  // Loop through all the 'm:tCountryCodeAndName' elements found above
  for (final countryElement in countryElements) {
    // Extract the country code from the element
    final countryCode = countryElement.findElements('m:sISOCode').single.text;
    // Extract the country name from the element
    final countryName = countryElement.findElements('m:sName').single.text;
    // Add the country code and name to the country list as a single string
    countryList.add('$countryCode - $countryName');
  }

  print(countryList);
  return countryList;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
