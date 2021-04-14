class Vehicle{
  
  Function manufactureModel;
  int wheels;
  
  Vehicle({this.wheels, this.manufactureModel});
  
}


void main(){
  
  //manufactureModel has two abstract methods - manufactureCar/ manufactureTruck
  //Whenever we want to construct a model of particular type, we pass in the Vehicle constructor - a)number of wheels b)vehicle we need to manufacture in manufactureModel 
  
  Vehicle car = Vehicle(wheels: 4, manufactureModel: manufactureCar);
  car.manufactureModel();
  
  Vehicle truck = Vehicle(wheels:6, manufactureModel: manufactureTruck);
  truck.manufactureModel();
}

void manufactureCar(){
  print('Car Manufactured');
}

void manufactureTruck(){
  print('Truck Manufactured');
}