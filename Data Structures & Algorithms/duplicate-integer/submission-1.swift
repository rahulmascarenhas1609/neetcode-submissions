class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let numberArray = nums
        let result = Set(Array(numberArray))
        if result.count != numberArray.count {
            return true
        } else {
            return false
        }
    }
}
