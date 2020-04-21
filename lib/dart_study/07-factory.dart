main() {}

class Singleton {
  String name;
  static Singleton _cache;

  //工厂构造函数无法访问this
  factory Singleton([String name = 'Singleton']) {
    if (Singleton._cache = null) {
      Singleton._cache = Singleton._newObject(name);
    }
    return Singleton._cache ??= Singleton._newObject(name);
  }

  Singleton._newObject(this.name);
}
