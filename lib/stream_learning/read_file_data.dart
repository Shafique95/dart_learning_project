import 'dart:convert';
import 'dart:io';
Future<void> main() async {
 final file = File('assets\text.txt');
 final contents = await file.openRead();
 contents.listen((event) => print(event));
 
}