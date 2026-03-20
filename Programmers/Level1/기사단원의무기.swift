import Foundation

func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    var counts = Array(repeating: 0, count: number + 1)

    for i in 1...number {
        for j in stride(from: i, through: number, by: i) {
            counts[j] += 1
        }
    }

    var totalSteel = 0
    for i in 1...number {
        if counts[i] > limit {
            totalSteel += power
        } else {
            totalSteel += counts[i]
        }
    }

    return totalSteel
}