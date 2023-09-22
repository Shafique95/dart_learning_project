void main() {
  print("Starting Binary search");
  var temp = PracticeBinarySearch.binarySearchPractice([1, 3, 4, 5, 6, 7], 9);
  print(temp);
}

class ImplementBinarySearch {
  static int findAValueFromList(List allData, findData) {
    int first, last, mid;
    first = 0;
    last = allData.length - 1;
    while (first <= last) {
      mid = ((first + last) / 2).floor();
      print("check $mid");
      if (allData[mid] == findData) {
        return allData[mid];
      } else if (findData > allData[mid]) {
        first = mid + 1;
      } else {
        last = mid - 1;
      }
    }
    return -1;
  }
}

class PracticeBinarySearch {
  static int binarySearchPractice(List list, searchValue) {
    int low, heigh, mid;
    low = 0;
    heigh = list.length - 1;
    while (low <= heigh) {
      mid = ((low + heigh) / 2).floor();
      if (searchValue == list[mid]) {
        return mid;
      } else if (searchValue >= list[mid]) {
        low = mid + 1;
      } else {
        heigh = mid - 1;
      }
    }

    return -1;
  }
}
