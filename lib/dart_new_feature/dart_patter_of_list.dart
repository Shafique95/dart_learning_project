void main() {
  const myList1 = [1, 3, 5];

  const List<int> myList = <int>[
    1,
    3,
    4,
    5,
    2,
    4,
    5,
    6,
    6,
    7,
    9,
    34,
  ];
  final [a, b, c] = myList1;
  print(a);
  print(b);
  print(c);
  final [r, x, d, ...] =
      myList; // if we want to get selected item and skip others
  print(r);
  print(d);
  print(x);
  final [m, ...t] = myList;
  print(m);
  print(t); // here t is another list except first value 1;
}
