void main() {
  print("hello world");

  // 1. Use var
  var name = "empodi";

  // 2. dynamic type
  dynamic temp = 5;
  temp = name;

  if (temp is String) {
    print("temp is String");
  }
  if (temp is int) {
    print("temp is int");
  } else {
    print("temp is not int");
  }
  if (name is String) {
    // result is always true
    print("name is String");
  }

  // 3. null safety
  String? nullable = "empodi";
  nullable = null;
  nullable?.isNotEmpty;

  // 4. final
  final myName = "empodi";
  // cannot modify variable myName

  // 5. late
  late final String str;
  // cannot access variable str before it is assigned
  str = "now";
  // cannot modify variable str

  // 6. const
  const max_len = 10;
  // value of the const variable should be known at compile time
}
