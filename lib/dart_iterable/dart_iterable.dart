void main() {
  const myString = 'This is a long string that I want to iterate over.';
  final myIterable = TextRuns(myString);
  for (var textRun in myIterable) {
    print(textRun);
  }
  String bd = "hBangladeshh";
  print("bd text ");
  print(bd.indexOf(RegExp("hh"), 10));
}

class TextRuns extends Iterable<String> {
  TextRuns(this.text);
  final String text;

  @override
  Iterator<String> get iterator => TextRunIterator(text);
}

class TextRunIterator implements Iterator<String> {
  TextRunIterator(this.text);
  final String text;

  String? _currentTextRun;
  int _startIndex = 0;
  int _endIndex = 0;

  final breakChar = RegExp(' ');

  @override
  String get current => _currentTextRun as String;

  @override
  bool moveNext() {
    print(breakChar.runtimeType);
    print(".........");
    _startIndex = _endIndex;
    if (_startIndex == text.length) {
      _currentTextRun = null;
      return false;
    }
    final next = text.indexOf(breakChar, _startIndex);
    print("get next $next");
    _endIndex = (next != -1) ? next + 1 : text.length;
    print(".............");
    print(_startIndex);
    print(_endIndex);
    _currentTextRun = text.substring(_startIndex, _endIndex);
    print("current text");
    print(_currentTextRun);
    return true;
  }
}
