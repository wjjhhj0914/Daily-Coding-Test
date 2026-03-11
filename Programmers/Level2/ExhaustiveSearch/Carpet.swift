import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    let totalArea = brown + yellow

    for h in 3...totalArea {
        if totalArea % h == 0 {
            let w = totalArea / h

            if w >= h && (w - 2) * (h - 2) == yellow {
                return [w, h]
            }
        }
    }
    return []
}