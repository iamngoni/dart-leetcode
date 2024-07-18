import 'dart:math';

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    assert(
      nums.length > 1 && nums.length <= pow(10, 4),
      'Nums need to have two or more elements',
    );

    assert(nums.every((n) => n >= pow(-10, 9)) && (n <= pow(10, 9))));

    for (int i = 0; i <= nums.length; i++) {
      for (int j = 0; j <= nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [nums[i], nums[j]];
        }
      }
    }

    throw ArgumentError('Value not found');
  }
}
