import Foundation

func solution(_ s: String) -> Bool {
    var count = 0

    for char in s {
        if char == "(" {
            count += 1
        } else {
            if count == 0 {
                return false
            }
            count -= 1
        }
    }

    return count == 0
}