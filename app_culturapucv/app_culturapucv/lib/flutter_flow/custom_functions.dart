import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? formatedRut(String? rut) {
  if (rut == null || rut.isEmpty) return null;

  // Remover puntos y guiones existentes
  String cleanRut = rut.replaceAll(RegExp(r'[.-]'), '');

  // Verificar longitud mínima del RUT
  if (cleanRut.length < 2) return cleanRut;

  // Obtener el cuerpo del RUT (sin el dígito verificador)
  String rutBody = cleanRut.substring(0, cleanRut.length - 1);

  // Obtener el dígito verificador del RUT
  String rutDigit = cleanRut.substring(cleanRut.length - 1);

  // Insertar puntos en el cuerpo del RUT
  StringBuffer rutWithDots = StringBuffer();
  for (int i = 0; i < rutBody.length; i++) {
    rutWithDots.write(rutBody[i]);
    if ((rutBody.length - i - 1) % 3 == 0 && i != rutBody.length - 1) {
      rutWithDots.write('.');
    }
  }

  // Agregar el guión y el dígito verificador al RUT formateado
  rutWithDots.write('-');
  rutWithDots.write(rutDigit);

  return rutWithDots.toString();
}

String? validateRut(String? rut) {
  // Verificar si el RUT es nulo o vacío
  if (rut == null || rut.isEmpty) {
    return 'RUT no puede estar vacío';
  }

  // Eliminar puntos y guion
  rut = rut.replaceAll('.', '').replaceAll('-', '');

  // Verificar que el RUT tenga al menos 8 caracteres (mínimo 7 + 1 dígito verificador)
  if (rut.length < 8) return 'RUT inválido';

  // Separar el cuerpo del dígito verificador
  String cuerpo = rut.substring(0, rut.length - 1);
  String verificador = rut.substring(rut.length - 1).toUpperCase();

  // Verificar que el cuerpo del RUT solo contenga números
  if (!RegExp(r'^\d+$').hasMatch(cuerpo)) {
    return 'RUT inválido';
  }

  // Calcular el dígito verificador usando el algoritmo módulo 11
  int suma = 0;
  int factor = 2;
  for (int i = cuerpo.length - 1; i >= 0; i--) {
    suma += int.parse(cuerpo[i]) * factor;
    factor = factor == 7 ? 2 : factor + 1;
  }

  int dvEsperado = 11 - (suma % 11);
  String dvCalculado = dvEsperado == 10
      ? 'K'
      : dvEsperado == 11
          ? '0'
          : dvEsperado.toString();

  // Comparar el dígito verificador calculado con el proporcionado
  if (verificador == dvCalculado) {
    return null; // RUT válido
  } else {
    return 'RUT inválido'; // RUT inválido
  }
}
