import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/usuario/menu/menu_widget.dart';
import 'evento_anadir_widget.dart' show EventoAnadirWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventoAnadirModel extends FlutterFlowModel<EventoAnadirWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for tiutlo widget.
  FocusNode? tiutloFocusNode;
  TextEditingController? tiutloTextController;
  String? Function(BuildContext, String?)? tiutloTextControllerValidator;
  // State field(s) for genero widget.
  String? generoValue;
  FormFieldController<String>? generoValueController;
  // State field(s) for ubicacion widget.
  FocusNode? ubicacionFocusNode;
  TextEditingController? ubicacionTextController;
  String? Function(BuildContext, String?)? ubicacionTextControllerValidator;
  // State field(s) for descripcion widget.
  FocusNode? descripcionFocusNode;
  TextEditingController? descripcionTextController;
  String? Function(BuildContext, String?)? descripcionTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for butacas widget.
  FocusNode? butacasFocusNode;
  TextEditingController? butacasTextController;
  String? Function(BuildContext, String?)? butacasTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tiutloFocusNode?.dispose();
    tiutloTextController?.dispose();

    ubicacionFocusNode?.dispose();
    ubicacionTextController?.dispose();

    descripcionFocusNode?.dispose();
    descripcionTextController?.dispose();

    butacasFocusNode?.dispose();
    butacasTextController?.dispose();
  }
}
