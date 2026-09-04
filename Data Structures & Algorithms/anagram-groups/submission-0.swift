class Solution {
        /*
            1. I am taking the words and putting them into an array
            2. After assign it to a key, as a sorted key
            3. Appending words with the same key to the key, if it doesnt
            exists, then creating a new key with the word. 
            4. Dictionary allows you to check if a key exists, and if not
            create a new key, letting us avoid a if/else condition. 
            5. Then return the values of the dict directly, since the 
            values itself is an array of the words. 
        */
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var groupedWords : [String: [String]] = [:]
        for words in strs {
            let key = String(Array(words).sorted())
            groupedWords[key, default: []].append(words)
        }
        return Array(groupedWords.values)
    }
}
