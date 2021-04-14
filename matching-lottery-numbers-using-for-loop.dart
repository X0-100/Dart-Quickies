List<int> winningNumbers = [12,6,34,22,41,9];

void main(){
  
  List<int> ticket1 = [12,6,34,22,41,9];
  //List<int> ticket2 = [41,17,26,32,7,35];
  
  int matches = checkNumbers(ticket1);
  print('You have $matches matching numbers');
    
}


int checkNumbers(List<int> myNumbers){
  int matchCount = 0;
  for (int winningNumber in winningNumbers){
    for(int x=0; x<myNumbers.length; x++){
      if(myNumbers[x] == winningNumber){
        matchCount = matchCount + 1;
      }
      else{
        
      }
    }
  }
  return matchCount;
}