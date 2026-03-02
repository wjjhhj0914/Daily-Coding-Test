import Foundation

func solution(_ citations:[Int]) -> Int {
    let sortedCitations = citations.sorted(by: >)
    var hIndex = 0

    for i in 0..<sortedCitations.count {
      let rank = i + 1
      let citationCount = sortedCitations[i]

      if citationCount >= rank {
        hIndex = rank
      } else {
        break
      }
    }
    return hIndex
}