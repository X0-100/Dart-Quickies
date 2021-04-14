
Function manufactureCar = (){print('Car Manufactured');};
Function manufactureSlowCar = () {print('Slow Car Manufactured');};
Function manufactureFastCar = () {print('Fast Car Manufactured');};
Function manufactureTruck = (){print('Truck Manufactured');};

class Vehicle{
  Function manufactureModel;
  int wheels;
  Vehicle({this.wheels, this.manufactureModel}); 
}


void main(){
  Vehicle car = Vehicle(wheels: 4, manufactureModel: manufactureCar);
  Vehicle slowCar = car;
  Vehicle fastCar = car;
  
  slowCar= car;
  slowCar.manufactureModel = manufactureSlowCar;
  slowCar.manufactureModel();
  
  fastCar = car;
  fastCar.manufactureModel = manufactureFastCar;
  fastCar.manufactureModel();
  
  Vehicle truck = Vehicle(wheels:6, manufactureModel: manufactureTruck);
  truck.manufactureModel();
}

