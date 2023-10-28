main() {
  print(getNumberOfDay("Monday"));
  if (getNumberOfDay("Monday") == 10) {
    print("please input a valid name of day");
  }
}

/// make a function that will convert a name of day into number
num getNumberOfDay(String day) {
  var numberOfDay = switch (day) {
    "Monday" when day.length == 5 => 1,
    "Tuesday" => 2,
    "Wednesday" => 3,
    "Thursday" => 4,
    "Friday" => 5,
    "Saturday" => 6,
    "Sunday" => 7,
    _ => 10 // insteade of defauld keyword we can use wildcard _.
  };
  return numberOfDay;
}
