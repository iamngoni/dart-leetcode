import 'package:leetcode/ordered_stream/ordered_stream.dart';
import 'package:test/test.dart';

void main() {
  test('OrderedStream', () {
    // ["OrderedStream","insert","insert","insert","insert","insert"]
    //[[5],[3,"ccccc"],[1,"aaaaa"],[2,"bbbbb"],[5,"eeeee"],[4,"ddddd"]]
    final OrderedStream orderedStream = OrderedStream(5);
    final List<String> out1 = orderedStream.insert(3, 'ccccc');
    final List<String> out2 = orderedStream.insert(1, 'aaaaa');
    final List<String> out3 = orderedStream.insert(2, 'bbbbb');
    final List<String> out4 = orderedStream.insert(5, 'eeeee');
    final List<String> out5 = orderedStream.insert(4, 'ddddd');

    expect(out1, []);
    expect(out2, ['aaaaa']);
    expect(out3, ['bbbbb', 'ccccc']);
    expect(out4, []);
    expect(out5, ['ddddd', 'eeeee']);
  });
}
