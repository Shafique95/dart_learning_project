import 'dart:io';

void main(List<String> args) async {
  print("start");
  await getDistrictName();

  print(await getName());
  print(await getJipCode());
  getName().then((val) => print(val + "ddddd"));
  getCountryName().then((val) => print(val));
  try{} on Exception catch (e){};
  try{} on IOException catch(e){}
  try{} on FormatException catch(e){}

  print("End");
}

Future<String> getName() async => "Shafiqul Islam";
Future<String> getJipCode() => Future.value("456788");
getCountryName() => Future.value();
Future<String> getDistrictName()async {
 await Future.delayed(Duration(seconds: 10));
  print("after 10 second");
  return Future.value("Kishoreganj");
}
