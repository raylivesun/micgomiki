import 'dart:async';

class AsyncOperation {
  final _completer = new Completer();
  
  AsyncOperation(List<String> args);

  Future doOperation() {
    _startOperation();
    return _completer.future; // Send future object back to client.
  }
}

class _startOperation {
  late String name;
  late int age;
  late T t;
  late Future<T> future;
  late AsyncOperation asyncOperation;
  late Future<AsyncOperation> AsyncOptions;
  late Future<T> Options;
}

class T {
  late String name;
  late int age;
  late T t;
  late Future<T> future;
  late AsyncOperation asyncOperation;
  late Future<AsyncOperation> AsyncOptions;
  late Future<T> Options;
}

class Die<T extends Messages> {
  late String name;
  late int age;
  late T t;
  late Future<T> future;
  late AsyncOperation asyncOperation;
  late Future<AsyncOperation> AsyncOptions;
  late Future<T> Options;

  void dieMessage(String message) async {
    print(message);
  }
}

mixin Messages {
  late String name;
  late int age;
  late T t;
  late Future<T> future;
  late AsyncOperation asyncOperation;
  late Future<AsyncOperation> AsyncOptions;
  late Future<T> Options;
}

class Live<T extends Messages> {
  late String name;
  late int age;
  late T t;
  late Future<T> future;
  late AsyncOperation asyncOperation;
  late Future<AsyncOperation> AsyncOptions;
  late Future<T> Options;

  void LiveMessage(String message) async {
    print(message);
  }
}

Future<AsyncOperation> main(List<String> args) async {
  return new AsyncOperation(args);
}
