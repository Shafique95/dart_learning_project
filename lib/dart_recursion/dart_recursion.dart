void main() {
int calculateFactorial(int number){
   print(number);
  if(number==0){
   
    return 1;
  }
  return number*calculateFactorial(number-1);
  //5*calculateFactorial(4) first
  //4*calculateFactorial(3) second
  //3*calculateFactorial(2) third
  //2*calculateFactorial(1) forth
}  
  print(calculateFactorial(5));
}
