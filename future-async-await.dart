void main() async{
  task1();
  String task2Result  =  await task2();
  task3(task2Result);
  task4();
}


void task1(){
  String task1Result = 'task 1 data';
  print('Task 1 completed with result of task1 as $task1Result');
}

// Future defined as dynamic type
// Like in List we can define List<String> -- Static

Future task2() async{
  Duration threeSeconds = Duration(seconds: 3);
  String task2Result;
  await Future.delayed(threeSeconds,(){
    task2Result = 'task 2 data';
    print('Task 2 Completed with result of task2 as $task2Result');
  });
  return task2Result;
}

void task3(String task2Result){
  String task3Result = task2Result;
  print('Task 3 Completed with result of task2 as $task3Result');
}

void task4(){
  String task4Result = 'task 4 data';
  print('Task 4 Completed with result of task4 as $task4Result');
}