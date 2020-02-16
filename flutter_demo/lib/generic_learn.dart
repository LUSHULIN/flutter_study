class Generic_Learn {
  void start() {
    Cache<String> cache1 = Cache();
    cache1.setItem("ca", "a");

    Cache<int> cache2 = Cache();
    cache2.setItem("int", 23);
  }
}

///泛型类,Cache<String> cache1 = Cache();为了提高程序的可重用性
class Cache<T> {
  static final Map<String, Object> _cache = Map();

  ///set
  void setItem(String key, T value) {
    _cache[key] = value;
  }

  T getItem(String key) {
    return _cache[key];
  }
}
