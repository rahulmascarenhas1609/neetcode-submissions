class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        for i in 0...nums.count - 1 {
            for j in 0...nums.count - 1 {
                if result.isEmpty {
                    if i != j {
                        if nums[i] + nums [j] == target {
                            result.append(i)
                            result.append(j)
                            break
                        }
                    }
                } else {
                    return result
                }
            }
        }
        
        return result
    }
}
