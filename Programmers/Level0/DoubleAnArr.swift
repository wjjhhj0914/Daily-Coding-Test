import Foundation

func solution(_ numbers: [Int]) -> [Int] {

   var result: [Int] = []
   for num in numbers {
       let z = num + num
       result.append(z)
   }
   return result

    // numbers.map { $0 * 2 }

}

solution([1, 2, 3, 4, 5])
