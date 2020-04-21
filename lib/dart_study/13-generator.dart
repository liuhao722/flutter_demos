import 'dart:async';

/**
 * 「函数生成器」
 * sync*  sync  同步生成器
 * 被「sync*」标记的函数，一定要返回一个 「Iterable」，这样的函数生成器叫做同步生成器：
 *
 * async*  async  异步生成器
 * 被「async*」标记的函数，一定要返回一个 「Stream」，这样的函数生成器叫做异步生成器：

 */

main() {
//  printSync();
//  printAsync();
  printSyncRe();
}

void printSyncRe() {
  var iterator = getSyncGeneratorRe(5).iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
}

printSync() {
  var iterator = getSyncGenerator(5).iterator;
  while (iterator.moveNext()) {
    print(iterator.current);
  }
}

printAsync() {
  StreamSubscription subscription = getAsyncGenerator(5).listen(null);
  subscription.onData((value) {
    print(value);
    if (value < 3) subscription.pause();
  });
}

//  同步生成器
Iterable<int> getSyncGenerator(int n) sync* {
  print('start');
  int k = n;
  while (k > 0) {
    //倒叙输出
    yield k--; // 同步使用 yield
  }
  print('end');
}

//  异步生成器

Stream<int> getAsyncGenerator(int n) async* {
  print('start');
  int k = n;
  while (k > 0) {
    //倒叙输出
    yield k--; // 同步使用 yield
  }
  print('end');
}

// 递归生成器
Iterable<int> getSyncGeneratorRe(int n) sync* {
  if (n > 0) {
    yield n;
    yield* getSyncGeneratorRe(n - 1);
  }
}
