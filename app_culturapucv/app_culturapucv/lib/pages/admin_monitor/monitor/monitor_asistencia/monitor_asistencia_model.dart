import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/usuario/menu/menu_widget.dart';
import 'monitor_asistencia_widget.dart' show MonitorAsistenciaWidget;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MonitorAsistenciaModel extends FlutterFlowModel<MonitorAsistenciaWidget> {
  ///  State fields for stateful widgets in this page.

  var rut = '';
  // Stores action output result for [Backend Call - API (marcarAsistencia)] action in obtenerCredencial widget.
  ApiCallResponse? marcarAsistencia;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
