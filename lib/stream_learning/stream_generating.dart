import 'dart:math';

void main() async {
  var result = await sumOfStream(generateStream());
  print(result);
  print("programme end");
}

  Future<int> sumOfStream(Stream<int> stream) async {
    var sum = 0;
    await for (final val in stream) {
      sum += val;
      print("sum$sum");
    }

    return sum;
  }

  Stream<int> generateStream() async* {
    final random = Random();
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield random.nextInt(50) + 1;
    }
  }
