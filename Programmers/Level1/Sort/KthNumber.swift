import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()

    for command in commands {
        let i = command[0]
        let j = command[1]
        let k = command[2]

        let sliced = array[i-1..<j]
        let sortedArray = sliced.sorted()
        result.append(sortedArray[k-1])
    }
    return result
}