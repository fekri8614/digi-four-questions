import 'dart:collection';

void main() {
  List<String> inputStrs = ["eat", "tea", "tan", "ate", "nat", "bat"];
  List<List<String>> output = groupAnagrams(inputStrs);
  print(output);
}

List<List<String>> groupAnagrams(List<String> strs) {
  var anagrams = HashMap<String, List<String>>();

  for (var s in strs) {
    var sortedS = (s.split('')..sort()).join();
    if (!anagrams.containsKey(sortedS)) {
      anagrams[sortedS] = [];
    }
    anagrams[sortedS]!.add(s);
  }

  return anagrams.values.toList();
}
