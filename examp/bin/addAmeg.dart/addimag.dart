import 'dart:io';

import 'package:http_parser/http_parser.dart';
import 'package:shelf/shelf.dart';

import '../rautar/Addemige.dart';

addameg(Request req) async {
  String? nameemeg;

  final contentType = MediaType.parse(req.headers['Content-Type']!);
  final body = await req.read().expand((element) => element).toList();

  final file = File('bin/images/${nameemeg}.png');

  await file.writeAsBytes(body);

  if (contentType.mimeType != 'image/png' &&
      contentType.mimeType != 'image/jpg') {
    return Response.forbidden('Erore plase Upload image.png or image.jpg');
  }

  return Response.ok('Upload image successfully');
}
