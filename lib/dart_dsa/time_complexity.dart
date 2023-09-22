void main() {
  TimeComplexity.calculateSum(10, 49);
}

class TimeComplexity {
  static void calculateSum(int x, int y) {
    int z;
    z = x + y;
    print("the sum is $z");
    for (int i = 0; i < 20; i++) {
      z = z + i;
      //O(20)
    }
  }
}
