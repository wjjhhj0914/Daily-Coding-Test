import Foundation

func solution(_ players: [String], _ callings: [String]) -> [String] {
    var p = players
    var position = [String: Int]()

    for (i, player) in p.enumerated() { position[player] = i }

    for name in callings {
        let current = position[name]!
        let front = p[current - 1]

        p.swapAt(current, current - 1)

        position[name] = current - 1
        position[front] = current
    }
    return p
}
