void main(){
  
  String doubleAsAString = '32e';
  double doubleAsANumber;
  
  try{
    doubleAsANumber = double.parse(doubleAsAString);
    print(doubleAsANumber);
  }catch(e){
    double defaultDouble = 30.0;
    doubleAsANumber = doubleAsANumber ?? defaultDouble;
    print('$e <==EXCEPTION CAUGHT Changing to default ==> $doubleAsANumber');
  }
  
}