import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../addAmeg.dart/addimag.dart';
import 'package:http_parser/http_parser.dart';

class Addemige {
  Handler get handler {
    final router = Router()..post('/addemig/<nameemeg>', addameg);

    return router;
  }
}
