// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> signInWithPhone(
  String phone,
  String password,
) async {
  // Get a reference to your Supabase client
  final supabase = Supabase.instance.client;

  try {
    // Attempt to sign in with the phone and password
    await supabase.auth.signInWithPassword(
      phone: phone,
      password: password,
    );
    return null; // Return null if sign-in is successful
  } on AuthException catch (e) {
    // Handle specific error cases and return a custom message
    if (e.message == 'Invalid login credentials') {
      return 'Las credenciales ingresadas son incorrectas.';
    }
    // Return the default message if no specific case is matched
    return e.message;
  }
}
