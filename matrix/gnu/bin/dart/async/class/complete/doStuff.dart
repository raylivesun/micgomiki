import 'dart:async';

Future doStuff() {
  return someAsyncOperation().then((result) {
    return someOtherAsyncOperation(result);
  });
}

Future someOtherAsyncOperation(result) {
  return new Future(result);
}

someAsyncOperation() {
  return new Future(computation as FutureOr Function());
}

mixin computation {
  Future(ArgumentError(Error Null));
}


