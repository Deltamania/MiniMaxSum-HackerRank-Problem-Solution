import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    print( arr.sorted().dropLast().reduce(0,+), arr.sorted().dropFirst().reduce(0,+) )

}

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
