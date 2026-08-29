class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var firstValue = Int()
        var secondValue = Int()
        for i in 0...nums.count - 1 {
            for j in 0...nums.count - 1 {
                if i != j {
                    if nums[i] + nums [j] == target {
                        firstValue = i
                        secondValue = j
                        return [firstValue,secondValue]
                    }
                }
            }
        }
        
        return [firstValue,secondValue]
    }
}
