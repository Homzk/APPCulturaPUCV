import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _rut = prefs.getString('ff_rut') ?? _rut;
    });
    _safeInit(() {
      _eventoHistorial = prefs.getInt('ff_eventoHistorial') ?? _eventoHistorial;
    });
    _safeInit(() {
      _monitor = prefs.getBool('ff_monitor') ?? _monitor;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _numAsientos = 0;
  int get numAsientos => _numAsientos;
  set numAsientos(int value) {
    _numAsientos = value;
  }

  String _rut = '';
  String get rut => _rut;
  set rut(String value) {
    _rut = value;
    prefs.setString('ff_rut', value);
  }

  int _eventoHistorial = 0;
  int get eventoHistorial => _eventoHistorial;
  set eventoHistorial(int value) {
    _eventoHistorial = value;
    prefs.setInt('ff_eventoHistorial', value);
  }

  String _profesion = '';
  String get profesion => _profesion;
  set profesion(String value) {
    _profesion = value;
  }

  DateTime? _anioNacimientoo =
      DateTime.fromMillisecondsSinceEpoch(1720545240000);
  DateTime? get anioNacimientoo => _anioNacimientoo;
  set anioNacimientoo(DateTime? value) {
    _anioNacimientoo = value;
  }

  String _imagenEvento = '';
  String get imagenEvento => _imagenEvento;
  set imagenEvento(String value) {
    _imagenEvento = value;
  }

  DateTime? _eventoFecha = DateTime.fromMillisecondsSinceEpoch(1720545180000);
  DateTime? get eventoFecha => _eventoFecha;
  set eventoFecha(DateTime? value) {
    _eventoFecha = value;
  }

  UserStruct _user = UserStruct();
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
  }

  int _invitados = 0;
  int get invitados => _invitados;
  set invitados(int value) {
    _invitados = value;
  }

  bool _asistencia = true;
  bool get asistencia => _asistencia;
  set asistencia(bool value) {
    _asistencia = value;
  }

  RutStruct _formatedRut = RutStruct();
  RutStruct get formatedRut => _formatedRut;
  set formatedRut(RutStruct value) {
    _formatedRut = value;
  }

  void updateFormatedRutStruct(Function(RutStruct) updateFn) {
    updateFn(_formatedRut);
  }

  String _rutPassword = '';
  String get rutPassword => _rutPassword;
  set rutPassword(String value) {
    _rutPassword = value;
  }

  bool _admin = false;
  bool get admin => _admin;
  set admin(bool value) {
    _admin = value;
  }

  bool _monitor = false;
  bool get monitor => _monitor;
  set monitor(bool value) {
    _monitor = value;
    prefs.setBool('ff_monitor', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
