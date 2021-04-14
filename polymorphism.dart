class Vehicle{
  int _numberOfWheels = 2;
  void numberOfWheels(){
    print(_numberOfWheels);
  }
}

class Bike extends Vehicle{
  
}

class Car extends Vehicle{
  @override
  void numberOfWheels(){
    super._numberOfWheels = _numberOfWheels + 2;
  }
}


void main(){
  Bike hyabusa = Bike();
  hyabusa.numberOfWheels();
  
  Car tesla = Car();
  tesla.numberOfWheels();
  print(tesla._numberOfWheels);
  
}