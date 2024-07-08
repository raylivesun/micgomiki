void HttpServer(bind id) async {
  then((server) => print('${server.isBroadcast}'));
  catchError(print);
}

class bind {
  bind();
}

void catchError(void Function(Object? object) print) {
  print(null);
}

void then(void Function(dynamic server) param0) {
  param0(null);
}

void main() {
  HttpServer;
}
