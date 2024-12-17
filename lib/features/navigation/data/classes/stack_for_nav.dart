import 'dart:collection';

class StackForNav<T> {
  final _stack = Queue<T>();
  int get length => _stack.length;
  bool canPop() => _stack.length > 1;
  void clearStack() {
    while (_stack.isNotEmpty) {
      _stack.removeLast();
    }
  }

  void push(T element) {
    _stack.addLast(element);
  }

  void pop() {
    if (canPop()) {
      _stack.removeLast();
    }
  }

  T getMain() => _stack.first;

  T peak() => _stack.last;
}