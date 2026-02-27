import Foundation

func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    var currentBoard = board
    var basket: [Int] = []
    var count = 0

    for move in moves {
         let column = move - 1

        for row in 0..<currentBoard.count {
            let doll = currentBoard[row][column]

            if doll != 0 {
                if let topDoll = basket.last, topDoll == doll {
                    basket.removeLast()
                    count += 2
                } else {
                    basket.append(doll)
                }
                currentBoard[row][column] = 0

                break
            }
        }
    }
    return count
}
