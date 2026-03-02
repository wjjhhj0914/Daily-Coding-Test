import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var hallOfFame = [Int]()
    var result = [Int]()

    for s in score {
      hallOfFame.append(s)
      hallOfFame.sort(by: >)

      if hallOfFame.count > k {
        hallOfFame.removeLast()
      }

      if let minScore = hallOfFame.last {
        result.append(minScore)
      }
    }
    return result
}