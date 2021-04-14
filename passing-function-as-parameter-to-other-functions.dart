// First Class Functions
// 1- Passing Function as parameter to function

int add(int n1, int n2){
  return n1+n2;
}

int mult(int n1, int n2){
  return n1*n2;
}

int sub(int n1, int n2){
  return n2-n1;
}

int div(int n1, int n2){
  return n1 % n2;
}

int calculator(int n1, int n2, Function calculation){
  return calculation(n1, n2);
}

void main(){
  int addResult = calculator(2,3,add);
  int subResult = calculator(2,3,sub);
  int multResult = calculator(2,3,mult);
  int divResult = calculator(2,3,div);
  
  print(addResult);
  print(subResult);
  print(multResult);
  print(divResult);
}