void sayHello(String name) {
  print("Hello $name, nice to meet you");
}

String sayHelloWithNamedParams(
    {int age = 0, String country = 'nowhere', String name = 'anon'}) {
  return "Hello $name, you're $age and you're from $country";
}
/*
String sayHelloWithNamedParams(
    {required int age, required String country, required String name}) {
  return "Hello $name, you're $age and you're from $country";
}
*/

String sayHelloWithOptionalPositionalParam(String name, int age,
        [String? country = 'korea']) =>
    "Hello $name, you're $age and you're from $country";

// QQ Operator
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

// typedef
typedef li = List<int>;
li reverseList(li list) {
  var reversedList = list.reversed;
  return reversedList.toList();
}

num plusFunc(num a, num b) {
  return a + b;
}

void main() {
  sayHello("empodi");
  print(sayHelloWithNamedParams(age: 28, country: "korea", name: "empodi"));

  var result = sayHelloWithOptionalPositionalParam("empodi", 28);
  print(result);

  print(capitalizeName("empodi"));
  print(capitalizeName(null));

  String? name;
  // QQ operator
  name ??= "empodi";
  name ??= "anon";
  print(name);

  print(reverseList([1, 2, 3, 4]));

  print(plusFunc(3, 4.2));
}
