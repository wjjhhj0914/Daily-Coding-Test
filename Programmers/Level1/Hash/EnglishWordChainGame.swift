import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var usedWords = Set<String>()
    var lastChar: Character = words[0].last!

    for (index, word) in words.enumerated() {
        if usedWords.contains(word) || (index > 0 && word.first != lastChar) {
            let person = (index % n) + 1 // 몇 번째 사람
            let turn = (index / n) + 1 // 몇 번째 차례
            return [person, turn]
        }
        usedWords.insert(word)
        lastChar = word.last!
    }
    return [0, 0]
}