import 'dart:io';
import 'dart:math';

abstract class Shape {
  void area();
  void perimeter();
}

class Recta extends Shape{
  double height;
  double width;

  Recta(this.height, this.width);

  @override
  void area(){
    double area = height * width;
    print('the area of the rectangle is $area');
  }

  @override
  void perimeter(){
    double perimeter = 2 * ( height + width );
    print('the area of the rectangle is $perimeter');
  }
}

class Square extends Shape{
  double length;

  Square(this.length);

  @override
  void area(){
    num area = pow(length, 2);
    print('the area of the square $area');
  }

  @override
  void perimeter(){
    double perimeter = 4 * length;
  }
}

void main(){
  Recta r1 = Recta(7, 8);
  r1.area();
  Square sq = Square(4);
  sq.area();
}