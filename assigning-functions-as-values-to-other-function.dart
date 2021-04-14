// First Class Functions
// 2 - Assign a Function "calculator" as value 
// 2 - to variable "calculation" of type Function


int add(int n1, int n2){
  return n1+n2;
}

int sub(int n1, int n2){
  return n2-n1;
}

int mul(int n1, int n2){
  return n1*n2;
}


Function calculation = (int n1, int n2, Function calculator){
  return calculator(n1, n2);
};

void main(){
  
  int resultSub = calculation(2, 5, sub);
  print(resultSub);
  
  int resultAdd = calculation(2, 5, add);
  print(resultAdd);
}
