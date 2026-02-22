import Foundation

func solution(_ new_id: String) -> String {
    // 1단계
    var id = new_id.lowercased()

    // 2단계
    id = id.filter { $0.isLowercase || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }.map { String($0) }.joined()

    // 3단계
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }

    // 4단계
    id = id.trimmingCharacters(in: ["."])

    // 5단계
    if id.isEmpty { id = "a" }

    // 6단계
    if id.count >= 16 {
        id = String(id.prefix(15)).trimmingCharacters(in: ["."])
    }

    // 7단계
    while id.count <= 2 {
        id += String(id.last!)
    }

    return id
}
