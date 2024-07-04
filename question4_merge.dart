void main() {
  List<List<int>> intervals = [
    [1, 3],
    [2, 6],
    [8, 10]
  ];
  List<List<int>> output = merge(intervals);
  print(output);
}

List<List<int>> merge(List<List<int>> intervals) {
  if (intervals.isEmpty) {
    return [];
  }

  intervals.sort((a, b) => a[0].compareTo(b[0]));

  List<List<int>> merged = [];
  for (var interval in intervals) {
    if (merged.isEmpty || merged.last[1] < interval[0]) {
      merged.add(interval);
    } else {
      merged.last[1] =
          merged.last[1] > interval[1] ? merged.last[1] : interval[1];
    }
  }

  return merged;
}
