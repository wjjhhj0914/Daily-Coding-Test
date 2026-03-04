import Foundation

func solution(_ n: Int) -> Int {
    var sum = 0

    let numberString = String(n)

    for char in numberString {
        if let num = char.wholeNumberValue {
           sum += num
        }
    }

    return sum
}

// return String(n).reduce(0, { $0 + Int(String($1))! })