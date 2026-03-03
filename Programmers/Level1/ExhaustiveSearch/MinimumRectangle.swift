import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    return (sizes.map { $0.max()! }.max()!) * (sizes.map { $0.min()! }.max()!)
}