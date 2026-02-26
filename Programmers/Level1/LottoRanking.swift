import Foundation

func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    let zeroCount = lottos.filter { $0 == 0 }.count
    let matchCount = lottos.filter { win_nums.contains($0) }.count

    let rank = [6, 6, 5, 4, 3, 2, 1]

    return [rank[matchCount + zeroCount], rank[matchCount]]
}
