class House {
  String brickCount;
  String noOfIrons;
  House({String noOfBricks, String noOfIrons}) {
    brickCount = noOfBricks;
    this.noOfIrons = noOfIrons;
  }
}

void main(){
  House house = House(noOfBricks: '23', noOfIrons:'89');
  print(house.brickCount);
  print(house.noOfIrons); 
}
