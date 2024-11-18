import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/usuario/menu/menu_widget.dart';
import 'dart:math';
import 'detalles_widget.dart' show DetallesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetallesModel extends FlutterFlowModel<DetallesWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (verificarDisponibilidad)] action in detalles widget.
  ApiCallResponse? nButacas;
  // Stores action output result for [Backend Call - API (contarReservasUsuario)] action in Button widget.
  ApiCallResponse? inscripRealizadas;
  // Stores action output result for [Backend Call - API (verificarDisponibilidad)] action in Button widget.
  ApiCallResponse? disponibilidad;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
