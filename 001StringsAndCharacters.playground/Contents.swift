/* 字符串和字符 */

// 字符串字面量
let someString = "hello playground"
let mutilineString = """
hello playground,
These are the same. \
continue
end
"""

// 初始化空字符串
var emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("nothing to see here")
}

// MARK: 字符串可变性
var variableString = "Horse"
variableString += " and varriage"
print(variableString)

// 字符串的值类型
// String类型是值类型,进行赋值或者函数方法传递时,会进行值拷贝

// 字符转字符
for character in "Dog!🐩" {
    print(character)
}
let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t"]

// 字符转字符串
let catString = String(catCharacters)

// 连接字符串和字符
let string1 = "hello"
let string2 = " world"
var welcome = string1 + string2

let charecter1: Character = "!"
welcome.append(charecter1)

// 多行字符串拼接
let badStart = """
one
two

"""
let end = """
three
"""
print(badStart + end)

// 字符串插值
let multiplier = 3
let message = "\(multiplier) time 2.5 is \(Double(multiplier) * 2.5)"

// 计算字符数量
let unusualMenagerie = "Koala, Snail, Penguin, Dromedary"
print(unusualMenagerie.count)

// 字符串索引
// 如果 String 是空串，startIndex 和 endIndex 是相等的
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(greeting.startIndex, offsetBy: 7)]
// greeting[greeting.endIndex] // Fatal error: String index is out of bounds

// 访问单个字符
for index in greeting.indices {
    print("\(greeting[index])", terminator: " ")
}


// 插入和删除
var hello  = "hello"
hello.insert("!", at: hello.endIndex)

hello.remove(at: hello.index(hello.endIndex, offsetBy: -1))
let range = hello.index(hello.endIndex, offsetBy: -3)..<hello.endIndex
hello.removeSubrange(range)


// 子字符串
let string = "hello, world!"
let idx = string.firstIndex(of: ",") ?? string.endIndex
let benginning = string[..<idx] // substring共用string内存
let newString = String(benginning) // 生成新的string内存空间

// 字符串比较
let quotation = "hello world"
let sameQuotation = "hello world"
if quotation == sameQuotation {
    print("same string")
}
// 前缀/后缀相等
let a1 = "hello world"
let a2 = "he"
let a3 = "ld"
if a1.hasPrefix(a2) {
    print("'\(a2)'是'\(a1)'的前缀")
}
if a1.hasSuffix(a3) {
    print("'\(a3)'是'\(a1)'的后缀")
}

// 字符串的Unicode表示形式
let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit)", terminator: " ")
}
print("")
// Unicode 标量表示
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: " ")
}
print("")
for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
