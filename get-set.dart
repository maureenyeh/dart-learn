void main(List<String> args) {
  var p = People();
  p.pName = 'mei';
  print(p.pName);
}

class People {
  late String _name;
  set pName(String value) {
    _name = value;
  }

  String get pName {
    return 'my name is ${_name}';
  }
}
