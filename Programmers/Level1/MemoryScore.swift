import Foundation

func solution(_ name: [String], _ yearning: [Int], _ photo: [[String]]) -> [Int] {
    let scoreBoard = Dictionary(uniqueKeysWithValues: zip(name, yearning))

    return photo.map { people in
        people.reduce(0) { total, person in
            total + (scoreBoard[person] ?? 0)
        }
    }
}