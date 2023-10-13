import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String getJsonAPI(
  String? nomFichier,
  String? numParc,
) {
  String resultat =
      '{    "mimeTypeName":"image/jpeg",    "fullFileName":"$nomFichier",    "defaultRepresentation":true,    "attributes":[       {          "attributeDefinitionUUID":"5d061c89-a5c9-4eb8-baef-ca72eb7d4aff",          "values":[             "$numParc"          ],          "attributeDataType":"STRING"       },       {          "attributeDefinitionUUID":"ecaaeb6a-f065-4bb1-ae79-b6c4d238e5d6",          "values":[             "EXPLORATIONPARC"          ],          "attributeDataType":"STRING"       },       {          "attributeDefinitionUUID":"79396cf0-3d38-44ab-a3ba-bea0a726a59a",          "values":[             "EXPLORATION_PHOTOS"          ],          "attributeDataType":"STRING"       },       {          "attributeDefinitionUUID":"02714e0e-dd44-44f1-8bf8-6e58e5c74dfd",          "values":[             "$nomFichier"          ],          "attributeDataType":"STRING"       }    ],    "minorVersion":false,    "documentTypeUUID":"ec892c75-a498-4652-828e-12a561306d98",    "final":true }';
  return resultat;
}

String? returnNamePicture(String numParc) {
  // function that displays the date in DD/MM/YY format - HH/MM/S
// This function returns the name of a picture based on the given park number and current date/time.
  final now = DateTime.now();
  final formattedDate = DateFormat('ddMMyy-HHmmss').format(now);
  return '$numParc-$formattedDate.jpg';
}
