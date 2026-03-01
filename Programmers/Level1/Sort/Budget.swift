import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var remainingBudget = budget
    var count = 0 // 부서
    let sortedRequests = d.sorted()

    for amount in sortedRequests {
      if remainingBudget >= amount {
        remainingBudget -= amount
        count += 1
      } else {
        break
      }
    }
    return count
}