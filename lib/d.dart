class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    final n1 = nums1.toSet();
    final n2 = nums2.toSet();
    return [
        n1.difference(n2).toList(),
        n2.difference(n1).toList()
    ];
  }
}
void main(){
  Solution sol=Solution();
  List<int>l1=[1,2,3];
  List<int>l2=[2,4,6];
  var s=sol.findDifference(l1, l2);
  print(s);
  
}