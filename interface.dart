void main(List<String> args) {
  var p = AndroidPhone();
  p.startup();
  //Dart可以直接用class實現interface功能
  var ap = AndroidImpRealClass();
  ap.startup();
  print(ap.signal);
}

abstract class AbstractPhone {
  void startup();
  void shutdown();
}

class Phone {
  void startup() {
    print('開機');
  }

  void shutdown() {
    print('關機');
  }
}

class AndroidPhone implements AbstractPhone {
  void startup() {
    print('開機');
  }

  void shutdown() {
    print('關機');
  }
}

//支援使用一種以上interface
class AndroidImpRealClass implements Phone, Mobile {
  int signal = 5;
  void startup() {
    print('開機A');
  }

  void shutdown() {
    print('關機A');
  }
}

class Mobile {
  int signal = 2;
}
