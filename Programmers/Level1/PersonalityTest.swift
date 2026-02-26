import Foundation

func solution(_ survey: [String], _ choices: [Int]) -> String {
    var dict = [Character: Int]()

    for i in 0..<survey.count {
        let score = abs(choices[i] - 4)

        if choices[i] < 4 {
            dict[survey[i].first!, default: 0] += score
        } else {
            dict[survey[i].last!, default: 0] += score
        }
    }

    return ["RT", "CF", "JM", "AN"].map {
        let f = $0.first!, s = $0.last!
        return dict[f, default: 0] >= dict[s, default: 0] ? String(f) : String(s)
    }.joined()
}
