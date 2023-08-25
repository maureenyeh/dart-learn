void main(List<String> args) {
  var p = Point(2, 3);
  print('p.x:${p.x}');
  print([p.x, p.y]);
  var c = Point.formJson({'x': 5, 'y': 6});
  print([c.x, c.y]);
}

class Point {
  late num x;
  late num y;
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  //命名建構子
  Point.formJson(Map json) {
    x = json['x'];
    y = json['y'];
  }
  //重定向建構子=>指向默認建構子
  Point.formXML(Map xml) : this(xml['x'], xml['y']);
}

class Point2 {
  num x;
  num y;
  var origin;
  // Point(num x, num y) {
  //   this.x = x;
  //   this.y = y;
  // }
  Point2(this.x, this.y) : origin = {x: x, y: y};
}
