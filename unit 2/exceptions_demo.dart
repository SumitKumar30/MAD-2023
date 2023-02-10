// 1. try, catch, finally
// 2. thowing an Exception
// 3. on keyword 
// 4. Custom exceptions

void main(){
  try{
    final int res = 100 ~/ 0;     // divide by zero
    print("Value of result is: ${res}");
  }on UnsupportedError{
      print("Ohh division by zero is not allowed!!!");
      //print('Stack Trace ');
  }
  finally{
    print('This part will always execute!!');
  }
  try{
      dynamic x = true;
      print("Value inside x is: ${x++}");
  }catch(e){
      print("Error Occurred!! $e");
      
  }

  try{
    makeDeposit(-5000);
  }catch(e){
    print("$e");
  }
}

void makeDeposit(int amount){
  if(amount < 0){
      throw  DepositException();
  }
}

class DepositException implements Exception{

  //int time = 10;
    @override
  String toString() {
    return "Amount deposited is less than zero!!!";
  }
}
