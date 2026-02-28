import Foundation

func solution(_ ingredient: [Int]) -> Int {
    var stack: [Int] = []
    var burgerCount = 0

    for item in ingredient {
        stack.append(item)

        if stack.count >= 4 {
            let n = stack.count

            if stack[n - 4] == 1 && stack[n - 3] == 2 && stack[n - 2] == 3 && stack[n - 1] == 1 {
                stack.removeLast(4)
                burgerCount += 1
            }
        }
    }
    return burgerCount
}
