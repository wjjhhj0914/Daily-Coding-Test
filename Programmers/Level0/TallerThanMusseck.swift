import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    var count = 0
    for num in array {
        if num > height {
            count += 1
        }
    }
    return count
}