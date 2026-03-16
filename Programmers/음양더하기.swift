import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var totalSum = 0

    for i in 0..<absolutes.count {
        let actualValue = signs[i] ? absolutes[i] : -absolutes[i]
        totalSum += actualValue
    }
    return totalSum
}