// Function as first class objects
// 3 - Declaring a function inside class construtor

class Car{
  
  Function drive;
  
  Car({this.drive});
  
}

void slowDrive(){
  print('Slow Drive Car');
}

void fastDrive(){
  print('Super Fast Car');
}

void main(){
  
  Car modelX = Car(drive: slowDrive);
  
  //upgrade
  modelX.drive = fastDrive;
  modelX.drive();
  
}