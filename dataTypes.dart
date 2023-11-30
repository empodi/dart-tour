void main() {
  // 1. List
  var giveMeSix = true;
  List<int> numList = [
    1,
    2,
    3,
    4,
    5,
    if (giveMeSix) 6, // collection-if
  ];
  // comma at the end automatically formats list in vscode or dartpad
  numList.add(7);
  print(numList);

  // 2. String Interpolation
  var name = "empodi";
  var age = 28;
  var greetings = "Hello, my name is $name and I'm ${age + 1}";
  print(greetings);

  // 3.Collection For
  var friends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in friends) "✅ + $friend",
  ];
  print(newFriends);

  // 4. Map
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  }; // map
  Map<int, bool> mp1 = {
    1: true,
    2: false,
  };
  Map<List<int>, bool> mp2 = {
    [
      1,
      2,
      3,
    ]: true,
    [
      1,
      2,
      3,
      4,
    ]: false,
  };

  // 5. Set
  var numSet = {1, 2, 3};
  numSet.add(4);
}
