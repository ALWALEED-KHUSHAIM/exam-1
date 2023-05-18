import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../addAmeg.dart/addimag.dart';
import 'Addemige.dart';
import 'shekEmails.dart';

class baseRauth {
  Handler get baseRaut {
    final router = Router()
      ..mount('/shekEmailAndPass', shekEmail)
      ..mount('/addimeg', Addemige().handler);

    final handler = Pipeline().addMiddleware(shekemail()).addHandler(router);

    return handler;
  }
}
