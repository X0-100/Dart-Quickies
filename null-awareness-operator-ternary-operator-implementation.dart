import 'package:flutter/foundation.dart';

class Fruit {
  String image;
  Fruit({@required this.image});
  bool returnFruit() {
    if (image.compareTo('Apple') == 0) {
      return true;
    } else {
      return false;
    }
  }
}

class Test {
  
  
  String testImage;
  static String isFruit;

  
  void provideImage ({String imageInput}) {
    testImage =   imageInput;
  }
  
  String  test(){
    Fruit fruit = Fruit(image: testImage);
    bool resultThread1 = fruit.returnFruit();
    resultThread1 ? isFruit = 'It\'s a fruit' : isFruit = null;
    isFruit ??= 'It\'s a vegeatable';
    return(isFruit);
  }
  
}

void main(){
  Test eatables = Test();  
  eatables.provideImage(imageInput: '');
  print(eatables.test());
}
