import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'aniadir_monitor_widget.dart' show AniadirMonitorWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AniadirMonitorModel extends FlutterFlowModel<AniadirMonitorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Rut widget.
  FocusNode? rutFocusNode;
  TextEditingController? rutTextController;
  String? Function(BuildContext, String?)? rutTextControllerValidator;
  String? _rutTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingrese el RUT sin puntos y con guión';
    }

    if (val.length < 9) {
      return 'Ingrese el RUT sin puntos y con guión';
    }
    if (val.length > 10) {
      return 'Ingrese el RUT sin puntos y con guión';
    }
    if (!RegExp('^(\\d{1,2}(?:[\\.]?\\d{3}){2}-[\\dkK])\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? users;

  @override
  void initState(BuildContext context) {
    rutTextControllerValidator = _rutTextControllerValidator;
  }

  @override
  void dispose() {
    rutFocusNode?.dispose();
    rutTextController?.dispose();
  }
}
