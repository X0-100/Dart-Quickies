class Vehicle{
  final int numberOfWheels;
  
  Vehicle({this.numberOfWheels});
  
  void wheelCount(){
    print(numberOfWheels);
  }
  
}

void main(){
  Vehicle bike = Vehicle();
  bike.wheelCount();
}