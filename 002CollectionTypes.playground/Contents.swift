/* 集合类型 */

/* 数组 */
// 初始化一个数组
var someInts = [Int]()
someInts.append(2)
someInts = []

// 创建带有默认值的数组
var threeDoubles = Array(repeating: 0.0, count: 3)

// 两个数组相加创建新数组
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

// 数组字面量创建数组
var shoppingList: [String] = ["Eggs", "Milk"]

// 访问和修改数组
print("the shopping list contains \(shoppingList.count) items.")
if shoppingList.isEmpty {
    print("the shopping list is empty")
} else {
    print("the shopping list is not empty")
}

// 增加数组元素
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList.insert("Maple Syrup", at: 4)

// 读取数组元素
var firstItem = shoppingList[0]

// 修改数组元素
shoppingList[0] = "Six eggs"
shoppingList[1...3] = ["Bananas", "Apple", "orange"]
print(shoppingList)

// 删除数组元素
shoppingList.remove(at: 0)
shoppingList.removeFirst()
shoppingList.removeLast()

// 数组遍历
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("index: \(index), value: \(value)")
}


/* 集合 */
/* 集合类型的哈希值
相等的对象哈希值必须相同 比如 a==b 必须a.hasValue == b.hasValue
Swift 的所有基本类型（比如 String,Int,Double 和 Bool）默认都是可哈希化的
可以作为集合的值的类型或者字典的键的类型。没有关联值的枚举成员值默认也是可哈希化的
 
 因为 Hashable 协议符合 Equatable 协议，所以遵循该协议的类型也必须提供一个“是否相等”运算符（==）的实现。这个 Equatable 协议要求任何符合 == 实现的实例间都是一种相等的关系。也就是说，对于 a,b,c 三个值来说，== 的实现必须满足下面三种情况：
 a == a(自反性)
 a == b 意味着 b == a(对称性)
 a == b && b == c 意味着 a == c(传递性)
*/

// 创建和构造一个空集合
var letters = Set<Character>()
letters.insert("a")
letters = []

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]

// 访问集合
print("I have \(favoriteGenres.count) favorite music genres")
if favoriteGenres.isEmpty {
    print("As far as music goes, I am not picky")
} else {
    print("I have particular music perferences")
}

// 修改集合
favoriteGenres.insert("Jazz")
favoriteGenres.remove("Rock")

// 查询集合中n某个特定值
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It is too funky in here")
}

for genre in favoriteGenres {
    print(genre)
}

for genre in favoriteGenres.sorted() {
    print(genre)
}

// 基本集合操作
/*
 使用 intersection(_:) 方法根据两个集合中都包含的值创建的一个新的集合。
 使用 symmetricDifference(_:) 方法根据在一个集合中但不在两个集合中的值创建一个新的集合。
 使用 union(_:) 方法根据两个集合的值创建一个新的集合。
 使用 subtracting(_:) 方法根据不在该集合中的值创建一个新的集合。
 */
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

// 集合成员关系和相等
/*
 使用“是否相等”运算符（==）来判断两个集合是否包含全部相同的值。
 使用 isSubset(of:) 方法来判断一个集合中的值是否也被包含在另外一个集合中。
 使用 isSuperset(of:) 方法来判断一个集合中包含另一个集合中所有的值。
 使用 isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等。
 使用 isDisjoint(with:) 方法来判断两个集合是否不含有相同的值（是否没有交集）。
 */
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isStrictSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


/* 字典 */
// 创建空字典
var namesOfIntegers = [Int: String]()
namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

// 字面量创建字典
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
var airports1 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// 访问字典
print("The dictionary of airports contains \(airports.count) items.")
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary is not empty")
}

// 增加字典元素
airports["LHR"] = "London"

// 修改字典元素
airports["LHR"] = "London Heathrow"

// updateValue(_:forKey:) 设置或者更新特定键对应的值 存在该键则更新并返回原值 不存在则添加
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName)")
} else {
    print("That airport is not in the airports dictionary")
}

// 删除字典中某元素
airports["APL"] = "Apple Internation"
airports["APL"] = nil

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue)")
} else {
    print("The airports dictionary does not contain a value for DUB")
}

// 字典遍历
for (key, value) in airports {
    print("key: \(key), value: \(value)")
}

for key in airports.keys {
    print(key)
}

for value in airports.values {
    print(value)
}

// 直接使用 keys 或者 values 属性构造一个新数组
let airportKeys = [String](airports.keys).sorted()
let airportValue = [String](airports.values).sorted()

