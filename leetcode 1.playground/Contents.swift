
//https://leetcode-cn.com/problems/two-sum/

import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = Dictionary<Int, Int>()

        for (i,x) in nums.enumerated() {
    
        let y = target - x
    
        if let j = dict[y] {
            return [j,i]
        }
    
        dict[x] = i
    }
    
    return Array<Int>()

        
    }
}
