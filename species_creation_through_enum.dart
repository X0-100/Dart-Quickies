enum Gender{
  male,
  female,
  alien,
}

class Manufacture{
  
  Gender species;
  
  Manufacture({this.species});
  
  String returnHuman(){
     
    if(species == Gender.male){
      return 'Male Human Created';
    }else if(species == Gender.female){
      return 'Female Human Created';
    }
    else{
      return 'Alien Species Created';
    }
  }
}

void main(){
  Manufacture species_2020 = Manufacture(species: Gender.male);
  String speciesCreated2020 = species_2020.returnHuman();
  print(speciesCreated2020);
  
  Manufacture species_2030 = Manufacture(species: Gender.female);
  String speciesCreated2030 = species_2030.returnHuman();
  print(speciesCreated2030);
  
  Manufacture species_2040 = Manufacture(species: Gender.alien);
  String speciesCreated2040 = species_2040.returnHuman();
  print(speciesCreated2040);
  
}