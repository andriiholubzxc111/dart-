import 'dart:io';
class TRectangle{
    double width;
    double height; 
    TRectangle(): width = 0, height = 0;
    TRectangle.withSides(this.width, this.height);
    TRectangle.copy(TRectangle other): width = other.width, height = other.height;
    void input(double w, double h){
        width = w; 
        height = h; 
    }
    void output(){
        print('Ширина прямокутника - $width, висота - $height');
    }
    double area()=> width * height;
    double perimeter()=> 2 * (width + height);
    bool isEqual(TRectangle other){
        return width == other.width && height == other.height;
    }
    TRectangle operator +(TRectangle other){
      return  TRectangle.withSides(width + other.width, height + other.height);
    }
    TRectangle operator -(TRectangle other){
        double newWidth = width - other.width;
        double newHeight = height - other.height; 
        if(newWidth<0){ 
            newWidth = 0;
        }
        if(newHeight<0){
            newHeight = 0;
        }
        return TRectangle.withSides(newWidth, newHeight);
    }
    TRectangle operator *(double n){
       return TRectangle.withSides(width * n ,height * n);
    }
}
void main(){
    var r1 = TRectangle.withSides(5,6);
    var r2 = TRectangle.withSides(6,7);
    var r3 = r2 - r1; 
    r3.output();
    var r4 = r1 + r3; 
    r4.output();
   var r5 = r4 * 2; 
   r5.output();
   print ('чи є перший і другий прямокутник рівними? ${r1.isEqual(r2)}');
    print('Площа четвертого прямокутника - ${r4.area()} , Периметр ${r4.perimeter()}');
 
}
