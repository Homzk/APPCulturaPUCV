import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/usuario/menu/menu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'createaccount_widget.dart' show CreateaccountWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateaccountModel extends FlutterFlowModel<CreateaccountWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailPhone widget.
  FocusNode? emailPhoneFocusNode;
  TextEditingController? emailPhoneTextController;
  String? Function(BuildContext, String?)? emailPhoneTextControllerValidator;
  String? _emailPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa un correo electrónico o número de teléfono';
    }

    if (!RegExp(
            '^([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,})|(9\\d{8})\$')
        .hasMatch(val)) {
      return 'Ingresa un correo electrónico o número de teléfono válidos';
    }
    return null;
  }

  // State field(s) for rut widget.
  FocusNode? rutFocusNode;
  TextEditingController? rutTextController;
  String? Function(BuildContext, String?)? rutTextControllerValidator;
  String? _rutTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El RUT es necesario';
    }

    if (val.length < 9) {
      return 'Ingrese el RUT sin puntos y con guión';
    }
    if (val.length > 10) {
      return 'Ingrese el RUT con puntos y guión';
    }
    if (!RegExp('^(\\d{1,2}(?:[\\.]?\\d{3}){2}-[\\dkK])\$').hasMatch(val)) {
      return 'Ingrese el RUT sin puntos y con guión';
    }
    return null;
  }

  // State field(s) for nombres widget.
  FocusNode? nombresFocusNode;
  TextEditingController? nombresTextController;
  String? Function(BuildContext, String?)? nombresTextControllerValidator;
  String? _nombresTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese nombre completo';
    }

    return null;
  }

  // State field(s) for Apellidos widget.
  FocusNode? apellidosFocusNode;
  TextEditingController? apellidosTextController;
  String? Function(BuildContext, String?)? apellidosTextControllerValidator;
  String? _apellidosTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese sus apellidos';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? users;
  // Stores action output result for [Custom Action - signUpWithPhone] action in Button widget.
  String? error;
  // Stores action output result for [Custom Action - checkAuth] action in Button widget.
  bool? isSuccessful;

  @override
  void initState(BuildContext context) {
    emailPhoneTextControllerValidator = _emailPhoneTextControllerValidator;
    rutTextControllerValidator = _rutTextControllerValidator;
    nombresTextControllerValidator = _nombresTextControllerValidator;
    apellidosTextControllerValidator = _apellidosTextControllerValidator;
  }

  @override
  void dispose() {
    emailPhoneFocusNode?.dispose();
    emailPhoneTextController?.dispose();

    rutFocusNode?.dispose();
    rutTextController?.dispose();

    nombresFocusNode?.dispose();
    nombresTextController?.dispose();

    apellidosFocusNode?.dispose();
    apellidosTextController?.dispose();
  }
}
