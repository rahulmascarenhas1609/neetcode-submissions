class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var topFreq : [Int : Int] = [:]
        for num in nums {
            if let count = topFreq[num] {
                topFreq[num, default: 0] += 1
            } else {
                topFreq[num] = 1
            }
        }
        
        let sortedValue = topFreq.sorted { $0.value > $1.value }
        return sortedValue.prefix(k).map { $0.key }
    }
}
