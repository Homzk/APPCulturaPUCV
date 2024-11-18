import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/admin_monitor/monitor/asistente_info/asistente_info_widget.dart';
import '/pages/usuario/menu/menu_widget.dart';
import 'monitor_lista_asistentes_widget.dart' show MonitorListaAsistentesWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MonitorListaAsistentesModel
    extends FlutterFlowModel<MonitorListaAsistentesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<VistaAsistentesRow, bool> checkboxValueMap = {};
  List<VistaAsistentesRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
