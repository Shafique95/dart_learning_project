class StudetntInfo{
  String? _name;
  double? _age;
  int? _class;

  // StudetntInfo(this._name,this._age,this._class);
setName(String name){
  this._name=name;
  }
get name=>_name;
setAge(double age){
  if (age<45) {
    print("sorry you are not eligible");
  }else{ this._age=age;}
  }
get age=>_age;
setClass(int className){
  this._class=className;
}
get className=>_class;
}