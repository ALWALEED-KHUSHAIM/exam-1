
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

Response shekEmail(Request _) {
  return Response.ok("email and pass the sheked");
}

class shekEmails {
  Handler get handler {
    final router = Router()..post('/crait_accaunt', shekEmail);

    return router;
  }
}

var pass = "123123";
var email = "mr.khushaim@gmail.com";
Middleware shekemail() => (innerHandler) => (Request req) {
      final emailhed = req.headers;

      if (emailhed["email"] != email) {
        return Response.unauthorized("eroore email plase entar new email");
      }
      final passlhed = req.headers;
      if (passlhed["pass"] != pass) {
        return Response.unauthorized("eroore paas plase entar new paas");
      }

      return innerHandler(req);
    };
