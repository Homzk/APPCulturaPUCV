// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';
import 'package:intl/intl.dart'; // Para formatear fechas

// Función para escapar los valores de CSV (comas, saltos de línea, comillas)
String escapeCsvValue(String value) {
  if (value.contains('\t') || value.contains('\n') || value.contains('"')) {
    value = '"${value.replaceAll('"', '""')}"'; // Escapar comillas dobles
  }
  return value;
}

Future downloadVistaAsistentesAsCSV(List<VistaAsistentesRow>? docs) async {
  // Null check para la lista de documentos
  docs = docs ?? [];

  // Añadir los encabezados de las columnas
  String viewerRut = "RUT";
  String viewerNombres = "Nombres";
  String viewerApellidos = "Apellidos";
  String viewerEmail = "Email";
  String viewerProfesion = "Profesion";
  String viewerRegion = "Region";
  String viewerAnioNacimiento = "Fecha de Nacimiento";
  String viewerAsientos = "Asientos";
  String viewerReservo = "Reservo";

  // Definir el encabezado del archivo CSV con tabuladores como delimitadores
  String header =
      "$viewerRut\t$viewerNombres\t$viewerApellidos\t$viewerEmail\t$viewerProfesion\t$viewerRegion\t$viewerAnioNacimiento\t$viewerAsientos\t$viewerReservo\n";

  // Inicializar el contenido del archivo con los encabezados
  String fileContent = header;

  // Recorrer los documentos y concatenar los datos en el formato CSV con tabuladores
  docs.asMap().forEach((index, record) {
    fileContent += escapeCsvValue(record.rut.toString()) +
        "\t" + // RUT
        escapeCsvValue(record.nombres.toString()) +
        "\t" + // Nombres
        escapeCsvValue(record.apellidos.toString()) +
        "\t" + // Apellidos
        escapeCsvValue(record.email != null && record.email!.isNotEmpty
            ? record.email.toString()
            : "No proporcionado") +
        "\t" + // Email
        escapeCsvValue(record.profesion != null && record.profesion!.isNotEmpty
            ? record.profesion.toString()
            : "No proporcionado") +
        "\t" + // Profesión
        escapeCsvValue(record.region != null && record.region!.isNotEmpty
            ? record.region.toString()
            : "No proporcionado") +
        "\t" + // Región
        escapeCsvValue(record.anioNacimiento != null
            ? DateFormat('yyyy')
                .format(record.anioNacimiento!) // Año de Nacimiento
            : "Desconocido") +
        "\t" + // Año de Nacimiento
        escapeCsvValue(record.numeroAsientos.toString()) +
        "\t" + // Número de Asientos
        escapeCsvValue(
            record.reservo != null ? (record.reservo! ? 'Si' : 'No') : 'No') +
        "\n"; // Reservo
  });

  // Definir el nombre del archivo con la fecha y hora actual
  final fileName =
      "FF_" + DateFormat('yyyyMMdd_HHmmss').format(DateTime.now()) + ".csv";

  // Convertir el contenido a bytes (UTF-8)
  var bytes = utf8.encode(fileContent);

  // Crear un stream para la descarga
  final stream = Stream<int>.fromIterable(bytes);

  // Iniciar la descarga
  return download(stream, fileName);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
