class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        let firstArray = Array(s).sorted()
        let secondArray = Array(t).sorted()
        var characterCount : [Character: Int] = [:]
        
        for character in firstArray {
            if let count = characterCount[character] {
                characterCount[character, default:0] += 1
            } else {
                characterCount[character] = 1
            }
        }

        for character in secondArray {
            if let count = characterCount[character] {
                characterCount[character, default:0] -= 1
            } else {
                characterCount[character] = -1
            }
        }

        return characterCount.values.allSatisfy { value in
            value == 0
        }
    }
}
