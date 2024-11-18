import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late MenuModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: Offset(0.0, 500.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(1.0, -1.0),
      child: Container(
        height: double.infinity,
        child: Stack(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: FutureBuilder<List<UsersRow>>(
                  future: UsersTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'id',
                      currentUserUid,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitCircle(
                            color: Color(0xFF006EB6),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<UsersRow> dropdown3AccountUsersRowList =
                        snapshot.data!;

                    final dropdown3AccountUsersRow =
                        dropdown3AccountUsersRowList.isNotEmpty
                            ? dropdown3AccountUsersRowList.first
                            : null;

                    return Container(
                      width: 258.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/logo_APP_Cultura_PUCV_1p.png',
                                    width: 108.0,
                                    height: 62.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            if (currentJwtToken != null &&
                                currentJwtToken != '')
                              Divider(
                                thickness: 1.0,
                                color: Color(0xFFE0E3E7),
                              ),
                            if (currentJwtToken != null &&
                                currentJwtToken != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 2.0, 12.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.userCircle,
                                        color: Color(0xFF006EB6),
                                        size: 35.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  dropdown3AccountUsersRow
                                                      ?.nombres,
                                                  'name',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  dropdown3AccountUsersRow
                                                      ?.apellidos,
                                                  'name',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 3.0)),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                dropdown3AccountUsersRow?.email,
                                                'email',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF006EB6),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFFE0E3E7),
                            ),
                            MouseRegion(
                              opaque: false,
                              cursor:
                                  SystemMouseCursors.click ?? MouseCursor.defer,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('inicio');
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: _model.mouseRegionHovered1!
                                        ? Color(0x4A006EB6)
                                        : Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.cottage_outlined,
                                            color: Color(0xFF14181B),
                                            size: 20.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Inicio',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered1 = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered1 = false);
                              }),
                            ),
                            if ((currentJwtToken != null &&
                                    currentJwtToken != '') &&
                                dropdown3AccountUsersRow!.isAdmin!)
                              Divider(
                                thickness: 1.0,
                                color: Color(0xFFE0E3E7),
                              ),
                            if ((currentJwtToken != null &&
                                    currentJwtToken != '') &&
                                dropdown3AccountUsersRow!.isAdmin!)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Text(
                                  'Opciones de Administrador',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF009F3C),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            if ((currentJwtToken != null &&
                                    currentJwtToken != '') &&
                                dropdown3AccountUsersRow!.isAdmin!)
                              MouseRegion(
                                opaque: false,
                                cursor: SystemMouseCursors.click ??
                                    MouseCursor.defer,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('eventoAnadir');
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.easeInOut,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _model.mouseRegionHovered2!
                                          ? Color(0x4D009F3C)
                                          : Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.post_add_outlined,
                                              color: Color(0xFF14181B),
                                              size: 20.0,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Crear Evento',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onEnter: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered2 = true);
                                }),
                                onExit: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered2 = false);
                                }),
                              ),
                            if ((currentJwtToken != null &&
                                    currentJwtToken != '') &&
                                dropdown3AccountUsersRow!.isAdmin!)
                              MouseRegion(
                                opaque: false,
                                cursor: SystemMouseCursors.click ??
                                    MouseCursor.defer,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('eventos2terminado');
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.easeInOut,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _model.mouseRegionHovered3!
                                          ? Color(0x4D009F3C)
                                          : Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.event_available,
                                              color: Color(0xFF14181B),
                                              size: 20.0,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Eventos Finalizados',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onEnter: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered3 = true);
                                }),
                                onExit: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered3 = false);
                                }),
                              ),
                            if ((currentJwtToken != null &&
                                    currentJwtToken != '') &&
                                dropdown3AccountUsersRow!.isAdmin!)
                              MouseRegion(
                                opaque: false,
                                cursor: SystemMouseCursors.click ??
                                    MouseCursor.defer,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('GestionMonitores');
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.easeInOut,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _model.mouseRegionHovered4!
                                          ? Color(0x4D009F3C)
                                          : Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.people_outline,
                                              color: Color(0xFF14181B),
                                              size: 20.0,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Gestion de Monitores',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onEnter: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered4 = true);
                                }),
                                onExit: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered4 = false);
                                }),
                              ),
                            if (dropdown3AccountUsersRow?.isAdmin ?? true)
                              Divider(
                                thickness: 1.0,
                                color: Color(0xFFE0E3E7),
                              ),
                            MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (currentJwtToken != null &&
                                      currentJwtToken != '') {
                                    context.pushNamed('credencial');
                                  } else {
                                    context.pushNamed('Login');
                                  }
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: _model.mouseRegionHovered5!
                                        ? Color(0x4A006EB6)
                                        : Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.account_circle_outlined,
                                            color: Color(0xFF14181B),
                                            size: 20.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              currentJwtToken != null &&
                                                      currentJwtToken != ''
                                                  ? 'Mi credencial'
                                                  : 'Ingresar',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered5 = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered5 = false);
                              }),
                            ),
                            if (currentJwtToken == null ||
                                currentJwtToken == '')
                              MouseRegion(
                                opaque: false,
                                cursor: SystemMouseCursors.click ??
                                    MouseCursor.defer,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('createaccount');
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.easeInOut,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _model.mouseRegionHovered6!
                                          ? Color(0x4A006EB6)
                                          : Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.addressCard,
                                              color: Color(0xFF14181B),
                                              size: 20.0,
                                            ),
                                          ),
                                          if (currentJwtToken == null ||
                                              currentJwtToken == '')
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Obtener Credencial',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                onEnter: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered6 = true);
                                }),
                                onExit: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered6 = false);
                                }),
                              ),
                            MouseRegion(
                              opaque: false,
                              cursor:
                                  SystemMouseCursors.basic ?? MouseCursor.defer,
                              child: Visibility(
                                visible: currentJwtToken != null &&
                                    currentJwtToken != '',
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('eventoHistorialUser');
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    curve: Curves.easeInOut,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _model.mouseRegionHovered7!
                                          ? Color(0x4A006EB6)
                                          : Colors.white,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.history,
                                              color: Color(0xFF14181B),
                                              size: 20.0,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Eventos Inscritos',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF14181B),
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              'Plus Jakarta Sans'),
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered7 = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered7 = false);
                              }),
                            ),
                            MouseRegion(
                              opaque: false,
                              cursor:
                                  SystemMouseCursors.click ?? MouseCursor.defer,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('eventos');
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  curve: Curves.easeInOut,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: _model.mouseRegionHovered8!
                                        ? Color(0x4A006EB6)
                                        : Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.calendar_month,
                                            color: Color(0xFF14181B),
                                            size: 20.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Calendario de Eventos',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF14181B),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            'Plus Jakarta Sans'),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered8 = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegionHovered8 = false);
                              }),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFFE0E3E7),
                            ),
                            Flexible(
                              child: MouseRegion(
                                opaque: false,
                                cursor: SystemMouseCursors.click ??
                                    MouseCursor.defer,
                                child: Visibility(
                                  visible: currentJwtToken != null &&
                                      currentJwtToken != '',
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await authManager.signOut();
                                      GoRouter.of(context)
                                          .clearRedirectLocation();

                                      context.goNamedAuth(
                                          'inicio', context.mounted);
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 150),
                                      curve: Curves.easeInOut,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: _model.mouseRegionHovered9!
                                            ? Color(0x56EA2626)
                                            : Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Cerrar Sesión',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            Color(0xFF14181B),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                'Plus Jakarta Sans'),
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.login_rounded,
                                                color: Color(0xFF14181B),
                                                size: 20.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onEnter: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered9 = true);
                                }),
                                onExit: ((event) async {
                                  safeSetState(
                                      () => _model.mouseRegionHovered9 = false);
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
