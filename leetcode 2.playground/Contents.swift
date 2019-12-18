
//https://leetcode-cn.com/problems/add-two-numbers/


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
}


class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var result: ListNode?
        var reultTailNode:ListNode?
        
        var curL1 = l1
        var curL2 = l2
        var loopNode = l1

        var nextIncrease = 0 //进位标示
        
        while loopNode != nil  {
            
            let val1 = curL1?.val ?? 0
            let val2 = curL2?.val ?? 0
            
            //进位
            var sumVal = val1 + val2 + nextIncrease
            nextIncrease = 0
            
            //进位检测
            if sumVal > 9 {
                sumVal = sumVal - 10
                nextIncrease = 1
            }
            
            if reultTailNode == nil {
                reultTailNode = ListNode(sumVal)
            }else{
                reultTailNode?.next = ListNode(sumVal)
                reultTailNode = reultTailNode?.next
            }
            
            if result == nil {
                result = reultTailNode
            }
            
            
            curL1 = curL1?.next
            curL2 = curL2?.next
            
            
            //node1 结束，切换loopNode
            if curL1 == nil {
                loopNode = curL2
            }else{
                loopNode = curL1
            }
        }
        
        if nextIncrease > 0 {
            reultTailNode?.next = ListNode(1)
            nextIncrease = 0
        }
        
        return result
    }
}

var a = ListNode(2)
var b = ListNode(4)
var c = ListNode(3)
b.next = c
a.next = b


Solution().addTwoNumbers(a, ListNode(9))
