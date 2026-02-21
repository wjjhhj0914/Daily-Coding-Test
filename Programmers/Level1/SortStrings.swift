import Foundation

func solution(_ strings: [String], _ n: Int) -> [String] {
    return strings.sorted {
        (Array($0)[n], $0) < (Array($1)[n], $1)
    }
}
