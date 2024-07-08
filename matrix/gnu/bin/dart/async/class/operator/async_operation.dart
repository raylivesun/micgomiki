import 'template.dart';

class AsyncOperation extends TemplateOperation {
  AsyncOperation() {
    new AsyncOperation();
    new AsyncOperation();
    new AsyncOperation();
    new AsyncOperation();
    new AsyncOperation();
    new AsyncOperation();
  }
}

mixin empty {
  Stream<bool> get isEmpty;
  Stream<bool> get isNotEmpty;
  Stream<bool> get isLoading;
  Stream<bool> get isError;
  Stream<bool> get isComplete;
  Stream<bool> get isNeeds;  
}

mixin loading {
  Stream<bool> get isEmpty;
  Stream<bool> get isNotEmpty;
  Stream<bool> get isLoading;
  Stream<bool> get isError;
  Stream<bool> get isComplete;
  Stream<bool> get isNeeds;  
}

mixin error {
  Stream<bool> get isEmpty;
  Stream<bool> get isNotEmpty;
  Stream<bool> get isLoading;
  Stream<bool> get isError;
  Stream<bool> get isComplete;
  Stream<bool> get isNeeds;  
}

mixin complete {
  Stream<bool> get isEmpty;
  Stream<bool> get isNotEmpty;
  Stream<bool> get isLoading;
  Stream<bool> get isError;
  Stream<bool> get isComplete;
  Stream<bool> get isNeeds;
}

mixin needs {
  Stream<bool> get isEmpty;
  Stream<bool> get isNotEmpty;
  Stream<bool> get isLoading;
  Stream<bool> get isError;
  Stream<bool> get isComplete;
  Stream<bool> get isNeeds;  
}

