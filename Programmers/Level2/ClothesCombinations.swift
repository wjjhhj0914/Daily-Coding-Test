import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var clothesCountByCategory = [String: Int]()

    for item in clothes {
        let category = item[1]
        clothesCountByCategory[category, default: 0] += 1
    }

    var totalCombinations = 1

    for count in clothesCountByCategory.values {
        totalCombinations *= (count + 1)
    }

    return totalCombinations - 1
}