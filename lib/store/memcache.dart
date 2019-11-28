import 'dart:async';

class MemCache {
  Map<String, dynamic> _cache = Map<String, dynamic>();
  Map<String, Timer> _cacheExpire = Map<String, Timer>();

  Duration _expire;
  MemCache({Duration expire}) {
    _expire = expire ?? Duration(seconds: 30);
  }

  get(String key, {Duration expire}) {
    if (expire != null) {
      this.resetExpire(key, expire);
    }
    return _cache[key];
  }

  set(String key, dynamic val, {Duration expire}) {
    _cache[key] = val;
    this.resetExpire(key, expire);
  }

  remove(String key) {
    _cache.remove(key);
    _cacheExpire.remove(key);
  }

  resetExpire(String key, Duration expire) {
    _cacheExpire[key]?.cancel();
    _cacheExpire[key] = Timer(expire ?? _expire, () {
      remove(key);
    });

  }
}

