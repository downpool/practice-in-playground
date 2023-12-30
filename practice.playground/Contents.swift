import Foundation

struct Human: Codable {
    var name: String
    var age: Int
}

let oneMan: Human = .init(name: "downpool", age: 23)

let encodes = try? JSONEncoder().encode(oneMan)

let json = NSString(data: encodes!, encoding: String.Encoding.utf8.rawValue)
//print(type(of: json!))

let datas = """
{ "name" : "downpool",
    "age": 23}
""".data(using: .utf8)!

let decodes = try? JSONDecoder().decode(Human.self, from: datas)

decodes?.name
decodes?.age
//
//let array: [Int] = [1, 2, 3, 4, 2, 3, 1, 5, 4, 12, 10, 8]
//
////print(array.last!, terminator: "")
//
//var array1: [Int] = array.shuffled()
//
//for ints in array1 {
//    print("\(ints)")
//}
var arrays: [Int] = []
for i in 1 ... 45 {
    arrays.append(i)
}
var appendsArray: [Int] = []
for j in 0...4{
    var lottery = arrays.shuffled()
    for i in 0 ..< 6 {
        appendsArray.append(lottery[i])
    }

    appendsArray.sort()

    for i in appendsArray {
        print(i, terminator: " ")
    }
    print()
    appendsArray.removeAll()
}

