import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    m-1
    let sortedScore = score.sorted(by: >)
    var totalProfit = 0

    for i in stride(from: m-1, to: sortedScore.count, by: m) {
      totalProfit += sortedScore[i] * m
    }
    return totalProfit
}