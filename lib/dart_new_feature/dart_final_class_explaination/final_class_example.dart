void main() {}

///The type 'B' must be 'base',
/// 'final' or 'sealed' because the supertype 'A' is 'final'.
final class A {}

base class B extends A {}

base class C implements A {}
/// The class 'Vehicl' can't be extended outside 
///of its library because it's a final 
/// 1.[final] class can be extends from its own file
/// 2.final class can be implement from its own file or library
/// 3.final class can not be extends or implement from outside of it own file or library
/// 4. a final,base,or sealed class can be extends or implement a final class 
final class Vehicl {
  carMoveMent(int metre) {}
}
 interface class M {
  
}

class N extends M{
  
}