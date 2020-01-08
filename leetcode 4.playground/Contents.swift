import UIKit

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count1 = nums1.count
        let count2 = nums2.count
        let totalCount = count1 + count2
        
        let isTwoValue = totalCount % 2 == 0
        let tail = totalCount / 2
            
        
        var smaller:Int!
        
        var index1 = 0
        var index2 = 0
        
        var find1 = 0
        var find2 = 0
        
        for i in 0...tail {
            
            let v1 = index1 < nums1.endIndex ? nums1[index1] : Int.max
            let v2 = index2 < nums2.endIndex ? nums2[index2] : Int.max
            
            if v1 <= v2 {
                smaller = v1
                index1 += 1
            }else{
                smaller = v2
                index2 += 1
            }
            
            if i == (tail-1){
                find1 = smaller
            }else if i == tail{
                find2 = smaller
            }
        }
        
        if isTwoValue {
            return Double((find1 + find2)) / 2.0
        }else{
            return Double(find2)
        }
        
    }
}

Solution().findMedianSortedArrays([1,3], [2])
Solution().findMedianSortedArrays([1,2], [3,4])

