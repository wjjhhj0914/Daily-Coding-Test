import Foundation

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var minKeys = [Character: Int]()

    for key in keymap {
        for (index, char) in key.enumerated() {
            let count = index + 1

            minKeys[char] = min(minKeys[char] ?? 101, count)
        }
    }

    var result =  [Int]()

    for target in targets {
        var total = 0
        var isPossible = true

        for char in target {
            if let count = minKeys[char] {
                total += count
            } else {
                isPossible = false
                break
            }
        }

        result.append(isPossible ? total : -1)
    }

    return result
}
