
//https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/submissions/

import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
            
        var count = 0
        
        var from = 0
        var map = Dictionary<Character,Int>()
        
        for (i,c) in s.enumerated() {
            
            let index = map[c]
                        
            if (index == nil) {
                //不存在,需要重新确认长度
                let newCount = i - from + 1
                count = max(newCount, count)
            }else{
                /*
                 存在
                 1.index < from，表明已经比较过的字符串，忽略更新长度
                 2.更新from ，下一位继续
                 */
                
                /*method 1*/
                if index! < from {
                    let newCount = i - from + 1
                    count = max(newCount, count)
                }else{
                    from = index! + 1
                }
                 
                /*method2 map中移除效率比较慢*/
//                if newFrom > from {
//                    map = map.filter { (key,val) -> Bool in
//                         return val >= newFrom
//                    }
//                    from = newFrom
//                 }

            }
            
            map[c] = i
                                    
        }
        return count
    }

}

