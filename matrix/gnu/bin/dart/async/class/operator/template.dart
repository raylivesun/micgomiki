
import '../../input/buttonClick.dart';

var template = Links();

ObjectLink Links() => new ObjectLink();

class Template {
  late AsyncOperation data;
  late AsyncOperation needs;
  late AsyncOperation complete;
  late AsyncOperation error;
  late AsyncOperation loading;
  late AsyncOperation empty;
}

class ObjectLink extends Template {
  ObjectLink() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
}

class Async extends SetUrl {
  String get name => 'async';
  String get description =>
      'Registers a callback to be called when the data is ready.';
  String get arguments => 'callback';
  String get example => 'async(callback)';
  String get category => 'Callbacks';
  String get returnType => 'void';
  String get isStatic => 'false';
  String get isConst => 'false';
  String get isFinal => 'false';
  String get isAbstract => 'false';
  String get isNative => 'false';
  String get isDeprecated => 'false';
  String get isVisible => 'true';
  String get isDeprecatedVisible => 'false';
  String get isInternal => 'false';
  String get isProtected => 'false';
  String get isPublic => 'true';
  String get isPrivate => 'false';
  String get isInternalVisible => 'false';
  String get isProtectedVisible => 'false';
  String get isPublicVisible => 'true';
  String get isPrivateVisible => 'false';
}

class AsyncOperation extends Template {
  AsyncOperation() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
  String get name => 'asyncOperation';
  String get description =>
      'Registers a callback to be called when the data is ready.';
  String get arguments => 'callback';
  String get example => 'asyncOperation(callback)';
  String get category => 'Callbacks';
  String get returnType => 'void';
  String get isStatic => 'false';
  String get isConst => 'false';
  String get isFinal => 'false';
  String get isAbstract => 'false';
  String get isNative => 'false';
  String get isDeprecated => 'false';
}

class ButtonClick extends Template {
  ButtonClick() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
  String get name => 'buttonClick';
  String get description =>
      'Registers a callback to be called when the data is ready.';
  String get arguments => 'callback';
  String get example => 'buttonClick(callback)';
  String get category => 'Callbacks';
  String get returnType => 'void';
  String get isStatic => 'false';
  String get isConst => 'false';
  String get isFinal => 'false';
  String get isAbstract => 'false';
  String get isNative => 'false';
  String get isDeprecated => 'false';
  String get isVisible => 'true';
  String get isDeprecatedVisible => 'false';
}

class Needs extends Template {
  Needs() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
}

class Complete extends Template {
  Complete() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
}

class Error extends Template {
  Error() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
}

class Loading extends Template {
  Loading() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
}

class Empty extends Template {
  Empty() {
    data = new AsyncOperation();
    needs = new AsyncOperation();
    complete = new AsyncOperation();
    error = new AsyncOperation();
    loading = new AsyncOperation();
    empty = new AsyncOperation();
  }
}

class TemplateOperation {
  String get name => '';
  String get description => '';
  String get arguments => '';
  String get example => '';
  String get category => '';
  String get returnType => '';
  String get isStatic => '';
  String get isConst => '';
  String get isFinal => '';
  String get isAbstract => '';
  String get isNative => '';
  String get isDeprecated => '';
  String get isVisible => '';

}
