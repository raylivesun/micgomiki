import '../../input/later.dart';

var hashSet = DocPeculiar();

ObjectLink DocPeculiar() => new ObjectLink();

class ObjectLink extends StatefulWidget {
  final Future<_ObjectLinkState> create = _ObjectLinkState() as Future<_ObjectLinkState>;
}

class _ObjectLinkState {
  Polynomial build(BuildContext context) {
    return new Polynomial(context);
  }
}

class Polynomial {
  var context;

  Polynomial(this.context);
}

void main(start, end) async {
  start = BigInt.from(-1); // -1
  start = BigInt.from(0.9999); // 0
  start = BigInt.from(-10.99); // -10
  start = BigInt.from(0x7FFFFFFFFFFFFFFF); // 9223372036854775807
  start = BigInt.from(1e+30); // 1000000000000000019884624838656

  end = BigInt.from(-1); // -1
}

class Big {
  var context;
}
