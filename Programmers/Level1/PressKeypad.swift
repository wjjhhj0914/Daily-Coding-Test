import Foundation

func solution(_ numbers: [Int], _ hand: String) -> String {
    let keypadPosition: [Int: [Int]] = [
        1: [0, 0], 2: [0, 1], 3: [0, 2],
        4: [1, 0], 5: [1, 1], 6: [1, 2],
        7: [2, 0], 8: [2, 1], 9: [2, 2],
        0: [3, 1]
    ]

    var leftPosition = [3, 0] // * 위치
    var rightPosition = [3, 2] // # 위치
    var result = ""

    func getDistance(_ start: [Int], _ target: [Int]) -> Int {
        return abs(start[0] - target[0]) + abs(start[1] - target[1])
    }

    for num in numbers {
        let targetPosition = keypadPosition[num]!

        switch num {
        case 1, 4, 7:
            result.append("L")
            leftPosition = targetPosition
        case 3, 6, 9:
            result.append("R")
            rightPosition = targetPosition
        default: // 2, 5, 8, 0
            let leftDistance = getDistance(leftPosition, targetPosition)
            let rightDistance = getDistance(rightPosition, targetPosition)

            if leftDistance < rightDistance {
                result.append("L")
                leftPosition = targetPosition
            } else if rightDistance < leftDistance {
                result.append("R")
                rightPosition = targetPosition
            } else {
                // 거리가 같을 때
                if hand == "left" {
                    result.append("L")
                    leftPosition = targetPosition
                } else {
                    result.append("R")
                    rightPosition = targetPosition
                }
            }
        }
    }
    return result
}
