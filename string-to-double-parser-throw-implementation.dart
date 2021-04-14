void main(){
  
  
  String doubleAsAString = '44';
  print('===================PROCESSING==============');
  parserMachine(doubleAsAString);
 
}

void parserMachine(doubleAsAString){
  double doubleAsANumber;
  
  try{ 
    if(RegExp('^(0{0,2}[1-9]|0?[1-9][0-9]|[1-9][0-9][0-9])\$').hasMatch(doubleAsAString)){
      doubleAsANumber = double.parse(doubleAsAString);
      print(doubleAsANumber+5.0);
    }
    else{
      throw 'The value supplied is not correct format use only numbers and check again';
    }
    

}catch(e){
    print(e);
  }
  
}