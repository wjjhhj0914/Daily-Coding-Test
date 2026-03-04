import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let p1 = [1, 2, 3, 4, 5]
    let p2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let p3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var scores = [0, 0, 0]

    for (i, answer) in answers.enumerated() {
        if answer == p1[i % p1.count] { scores[0] += 1 }
        if answer == p2[i % p2.count] { scores[1] += 1 }
        if answer == p3[i % p3.count] { scores[2] += 1 }
    }

    let maxScore = scores.max() ?? 0
    var result = [Int]()

    for (index, score) in scores.enumerated() {
        if maxScore == score {
            result.append(index + 1)
        }
    }
    return result
}