void main() {
  List<int> numList = [100, 4, 200, 1, 3, 2];
  print(longestConsecutive(numList));
}

int longestConsecutive(List<int> numList) {
  if (numList.isEmpty) {
    return 0;
  }

  var numSet = numList.toSet();
  int longestStreak = 0;

  for (var num in numSet) {
    if (!numSet.contains(num - 1)) {
      int currentNum = num;
      int currentStreak = 1;

      while (numSet.contains(currentNum + 1)) {
        currentNum += 1;
        currentStreak += 1;
      }

      longestStreak =
          currentStreak > longestStreak ? currentStreak : longestStreak;
    }
  }

  return longestStreak;
}
