import Foundation

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    let uniqueReports = Set(report)
    var reportedHistory = [String: [String]]()

    for r in uniqueReports {
        let split = r.split(separator: " ").map { String($0) }
        let reporter = split[0]
        let target = split[1]

        reportedHistory[target, default: []].append(reporter)
    }

    var mailCount = [String: Int]()

    for (_, reporters) in reportedHistory {
        if reporters.count >= k {
            for person in reporters {
                mailCount[person, default: 0] += 1
            }
        }
    }

    return id_list.map { mailCount[$0, default: 0] }
}
