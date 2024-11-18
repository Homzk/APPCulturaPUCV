import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin_monitor/admin/confirm_dialog/confirm_dialog_widget.dart';
import '/pages/admin_monitor/monitor/monitor_info/monitor_info_widget.dart';
import '/pages/usuario/menu/menu_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'gestion_monitores_widget.dart' show GestionMonitoresWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GestionMonitoresModel extends FlutterFlowModel<GestionMonitoresWidget> {
  ///  State fields for stateful widgets in this page.

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
      return 'Ingrese el RUT sin puntos y con guión';
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
