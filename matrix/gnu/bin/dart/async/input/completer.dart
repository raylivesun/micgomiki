import 'dart:async';

import 'buttonClick.dart';

var completer = Completer.sync();

void main() {
  runApp(new MyApp());
}

void runApp(MyApp myApp) {
  runZoned(() {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(myApp);
  });
}

class WidgetsFlutterBinding {
  static void ensureInitialized() {
    if (WidgetsBinding.instance == null) {
      WidgetsBinding.instance = new WidgetsFlutterBindingImpl() as WidgetsBinding?;
    }
  }
}

class WidgetsFlutterBindingImpl {
  static void scheduleMicrotask(callback) {
    completer.complete();
  }
  static void scheduleFrameCallback(callback) {
    completer.complete();
  }

}

class WidgetsBinding {
  static WidgetsBinding? instance;
}

class MyApp {
  late Set data;
  MyApp() {
    data = new Set();
  }
}
