// The Likelist class that implements Iterable
class Likelist<T> implements Iterable<T> {
  List<T> _list;

  // Constructor to initialize the Likelist with a list
  Likelist(List<T> initialList) : _list = List.from(initialList);

  // Implement the iterator method from Iterable
  @override
  Iterator<T> get iterator => _LikelistIterator<T>(_list);
  
  @override
  bool any(bool Function(T element) test) {
    // TODO: implement any
    throw UnimplementedError();
  }
  

  
  @override
  bool contains(Object? element) {
    // TODO: implement contains
    throw UnimplementedError();
  }
  
  @override
  T elementAt(int index) {
    // TODO: implement elementAt
    throw UnimplementedError();
  }
  
  @override
  bool every(bool Function(T element) test) {
    // TODO: implement every
    throw UnimplementedError();
  }
  

  @override
  // TODO: implement first
  T get first => throw UnimplementedError();
  
  @override
  T firstWhere(bool Function(T element) test, {T Function()? orElse}) {
    // TODO: implement firstWhere
    throw UnimplementedError();
  }
  

  
  @override
  Iterable<T> followedBy(Iterable<T> other) {
    // TODO: implement followedBy
    throw UnimplementedError();
  }
  
  @override
  void forEach(void Function(T element) action) {
    // TODO: implement forEach
  }
  
  @override
  // TODO: implement isEmpty
  bool get isEmpty => throw UnimplementedError();
  
  @override
  // TODO: implement isNotEmpty
  bool get isNotEmpty => throw UnimplementedError();
  
  @override
  String join([String separator = ""]) {
    // TODO: implement join
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement last
  T get last => throw UnimplementedError();
  
  @override
  T lastWhere(bool Function(T element) test, {T Function()? orElse}) {
    // TODO: implement lastWhere
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement length
  int get length => throw UnimplementedError();
  

  
  @override
  T reduce(T Function(T value, T element) combine) {
    // TODO: implement reduce
    throw UnimplementedError();
  }
  
  @override
  // TODO: implement single
  T get single => throw UnimplementedError();
  
  @override
  T singleWhere(bool Function(T element) test, {T Function()? orElse}) {
    // TODO: implement singleWhere
    throw UnimplementedError();
  }
  
  @override
  Iterable<T> skip(int count) {
    // TODO: implement skip
    throw UnimplementedError();
  }
  
  @override
  Iterable<T> skipWhile(bool Function(T value) test) {
    // TODO: implement skipWhile
    throw UnimplementedError();
  }
  
  @override
  Iterable<T> take(int count) {
    // TODO: implement take
    throw UnimplementedError();
  }
  
  @override
  Iterable<T> takeWhile(bool Function(T value) test) {
    // TODO: implement takeWhile
    throw UnimplementedError();
  }
  
  @override
  List<T> toList({bool growable = true}) {
    // TODO: implement toList
    throw UnimplementedError();
  }
  
  @override
  Set<T> toSet() {
    // TODO: implement toSet
    throw UnimplementedError();
  }
  
  @override
  Iterable<T> where(bool Function(T element) test) {
    // TODO: implement where
    throw UnimplementedError();
  }
  


  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

// The iterator class for the Likelist
class _LikelistIterator<T> implements Iterator<T> {
  final List<T> _list;
  int _currentIndex = 0;

  _LikelistIterator(this._list);

  @override
  T get current {
    if (_currentIndex < _list.length) {
      return _list[_currentIndex];
    }
    return null as T;
  }

  @override
  bool moveNext() {
    _currentIndex++;
    return _currentIndex <= _list.length;
  }
}

void main() {
  var list = [1, 2, 3, 4, 5];
  var likelist = Likelist<int>(list);

  // Now you can use a for-loop or any other iterable methods on likelist
  for (var item in likelist) {
    print(item);
  }
}
