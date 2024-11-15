import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Cultupucv Group Code

class CultupucvGroup {
  static String getBaseUrl() =>
      'https://rtnpiowesdcaucsyhaxp.supabase.co/rest/v1/rpc';
  static Map<String, String> headers = {};
  static ListarReservasCall listarReservasCall = ListarReservasCall();
  static MarcarAsistenciaCall marcarAsistenciaCall = MarcarAsistenciaCall();
  static AsistentesCall asistentesCall = AsistentesCall();
  static GetContadorAsistenciaCall getContadorAsistenciaCall =
      GetContadorAsistenciaCall();
  static ContarReservasUsuarioCall contarReservasUsuarioCall =
      ContarReservasUsuarioCall();
  static AverageRatingCall averageRatingCall = AverageRatingCall();
  static ContarCalificacionesCall contarCalificacionesCall =
      ContarCalificacionesCall();
}

class ListarReservasCall {
  Future<ApiCallResponse> call({
    int? pEventoId,
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_evento_id": ${pEventoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'listarReservas',
      apiUrl: '${baseUrl}/listar_reservas',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? rut(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].usuario_rut''',
      ));
  int? nAsientos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].numero_asientos''',
      ));
  bool? asistencia(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].asistencia''',
      ));
}

class MarcarAsistenciaCall {
  Future<ApiCallResponse> call({
    String? rut = '',
    int? eventoId,
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_rut": "${rut}",
  "p_evento_id": ${eventoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'marcarAsistencia',
      apiUrl: '${baseUrl}/marcar_asistencia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsistentesCall {
  Future<ApiCallResponse> call({
    String? rut = '',
    int? eventoId,
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "p_rut": "${rut}",
  "p_evento_id": ${eventoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'asistentes',
      apiUrl: '${baseUrl}/asistentes',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContadorAsistenciaCall {
  Future<ApiCallResponse> call({
    int? idEvento,
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "evento_id": "${idEvento}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getContadorAsistencia',
      apiUrl: '${baseUrl}/get_asistencia_contador',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ContarReservasUsuarioCall {
  Future<ApiCallResponse> call({
    String? usuarioId = '',
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "user_id_input": "${usuarioId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'contarReservasUsuario',
      apiUrl: '${baseUrl}/contar_reservas_usuario',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AverageRatingCall {
  Future<ApiCallResponse> call({
    int? eventoId,
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "evento_id_input": "${eventoId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'averageRating',
      apiUrl: '${baseUrl}/obtener_promedio_valoracion',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? promedio(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].promedio_valoracion''',
      ));
}

class ContarCalificacionesCall {
  Future<ApiCallResponse> call({
    int? eventoId,
  }) async {
    final baseUrl = CultupucvGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "evento_id_input": "${eventoId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'contarCalificaciones',
      apiUrl: '${baseUrl}/contar_calificaciones',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? numCalificaciones(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].numero_calificaciones''',
      ));
}

/// End Cultupucv Group Code

class VerificarDisponibilidadCall {
  static Future<ApiCallResponse> call({
    int? eventoId,
  }) async {
    final ffApiRequestBody = '''
{
  "evento_id": ${eventoId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verificarDisponibilidad',
      apiUrl:
          'https://rtnpiowesdcaucsyhaxp.supabase.co/rest/v1/rpc/verificar_disponibilidad',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RealizarReservaCall {
  static Future<ApiCallResponse> call({
    String? usuarioId = '',
    int? eventoId,
    int? numeroAsientos,
  }) async {
    final ffApiRequestBody = '''
{
  "p_usuario_id": "${usuarioId}",
  "p_evento_id": ${eventoId},
  "p_numero_asientos": ${numeroAsientos}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'realizarReserva',
      apiUrl:
          'https://rtnpiowesdcaucsyhaxp.supabase.co/rest/v1/rpc/realizar_reserva',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0bnBpb3dlc2RjYXVjc3loYXhwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTc4MDcxODMsImV4cCI6MjAzMzM4MzE4M30.WruDSxHyOk2S7zWobpZKJzBgY2hP5zs5Hx7cnBGcoEw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? mensaje(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
