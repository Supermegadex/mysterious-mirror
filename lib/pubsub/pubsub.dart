class PubSub {
  static Map<String, List<Function>> subscriptions;

  static subscribe(String name, Function callback) {
    if (subscriptions[name] != null) {
      subscriptions[name] = List<Function>();
    }
    subscriptions[name].add(callback);
  }

  static publish(String name, List args) {
    subscriptions[name].forEach((func) => func(args));
  }
}
