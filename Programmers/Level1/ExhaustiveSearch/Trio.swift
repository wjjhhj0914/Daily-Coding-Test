import Foundation

func solution(_ number:[Int]) -> Int {
    let n = number.count
    var count = 0

    for i in 0..<n-2 {
        for j in (i + 1)..<n-1 {
            for k in (j + 1)..<n {
                if number[i] + number[j] + number[k] == 0 {
                    count += 1
                }
            }
        }
    }
    return count
}