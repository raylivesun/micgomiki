import 'dart:mirrors';

var hashCode = currentMirrorSystem();

class ClassMirror extends Mirror {
  var classMirror;

  ClassMirror(this.classMirror);
}

class ClassMirrorImpl extends ClassMirror {
  var classMirror;

  ClassMirrorImpl(this.classMirror) : super(classMirror);
}

class Pec extends ClassMirror {
  Pec(super.classMirror);  
}

void main(args) {
  var pec = new Pec(new ClassMirrorImpl(reflectClass(Pec)));
  print(pec.hashCode);
}
