import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var stageCounts = Array(repeating: 0, count: N + 2)

    for s in stages {
      stageCounts[s] += 1
    }

    var failureRates: [(stage: Int, rate: Double)] = []
    var totalPlayers = Double(stages.count)

    for i in 1...N {
      let currentStagePlayers = Double(stageCounts[i])

      if totalPlayers > 0 {
        let rate = currentStagePlayers / totalPlayers

        failureRates.append((i, rate))
        totalPlayers -= currentStagePlayers
      } else {
        failureRates.append((i, 0.0))
      }
    }

    let sortedResult = failureRates.sorted {
      if $0.rate == $1.rate {
        return $0.stage < $1.stage
      }
      return $0.rate > $1.rate
    }

    return sortedResult.map { $0.stage }
}