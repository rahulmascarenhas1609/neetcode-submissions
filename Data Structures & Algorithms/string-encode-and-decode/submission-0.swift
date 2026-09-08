class Solution {
    func encode(_ strs: [String]) -> String {
        var index = 0
        var length = 0
        
        var encodeString: [String] = []
        while index < (strs.count) {
            length = strs[index].count
            encodeString.append(String(length))
            encodeString.append("#")
            encodeString.append(strs[index])
            
            length = 0
            index += 1
        }
        
        return encodeString.joined()
    }

    func decode(_ str: String) -> [String] {
        let characters = Array(str)
        
        var index = 0
        var length = 0
        var word = ""
        var decodedStrings: [String] = []
        
        while index < characters.count {
            // Build length until we reach "#"
            while characters[index] != "#" {
                
                if let value = Int(String(characters[index])) {
                    length = length * 10 + value
                    index += 1
                }
            }
            
            index += 1
            
            for _ in 0..<length {
                word.append(characters[index])
                index += 1
            }
            
            decodedStrings.append(word)
            word = ""
            length = 0
        }
        return decodedStrings
    }
}
