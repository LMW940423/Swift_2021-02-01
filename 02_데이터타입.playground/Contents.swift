import UIKit

/*
 내 PC의 OS크기 알기 (똑같은 범위를 찾는다)
 */

print("Int : \(String(Int.min)) ~ \(String(Int.max))")
print("Int8 : \(String(Int8.min)) ~ \(String(Int8.max))")
print("Int16 : \(String(Int16.min)) ~ \(String(Int16.max))")
print("Int32 : \(String(Int32.min)) ~ \(String(Int32.max))")
print("Int64 : \(String(Int64.min)) ~ \(String(Int64.max))")

/*
 기본 데이터 타입
 : Bool, Int, UInt(최소값을 0으로, 최대값을 2배로), Float, Double, Character, String
 */

// Bool
var someBool : Bool = true
someBool = false

// Int
var someInt : Int = -100
someInt = Int(100.1) // Double형도 Int를 선언해서 사용할 수 있다.
someInt = 100_000
someInt = 100_00_00

// UInt
var someUInt : UInt = 100
someUInt = 100
// someUInt = someInt // Int와 UInt은 타입이 다르다!

// Float
var someFloat : Float = 3.14
someFloat = 3 // Float에 Int를 넣어도 상관없다.
someFloat = 10_000.44_556

// Double
var someDouble : Double = 3.14
someDouble = 3 // Double에 Int를 넣어도 상관없다.
someDouble = 10_000.44_556

print("Printing \(type(of : someDouble)) : \(type(of : someFloat))") // 해당값의 type를 확인

// 숫자 Type 변환

let doubleNum = 4.999999
var castToInt = Int(doubleNum)
var roundToInt = Int(doubleNum.rounded()) // 반올림

print("Origin :", doubleNum, "After Cast :", castToInt, "After Rounded :", roundToInt)

// Character (한글자만 가능!)
var someCharacter : Character = "🍉"
someCharacter = "가"
someCharacter = "a"

// String
var someString : String = "하하하 🥑"
someString = someString + "웃으면 복이와요"
someString += "나도!"
print(someString)

someString = """
여러줄의 문자열을
사용할 수 있습니다.
첫줄에 겹따옴표 3개,
마지막 줄에 겹따옴표 3개를
사용하면 됩니다.
""" // 따옴표는 다른 줄에 따로 있어야 한다.

print(someString)

// 문자열과 특수문자
print("aa\tbb=\ncc") // 줄바꿈과 탭
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein" // 따옴표 쓰는 방법
print(wiseWords)

// Unicode
let dollaSign = "\u{24}" // 달러 표시
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
print(dollaSign, blackHeart, sparklingHeart)

// 빈 문자열 초기화
var emptyString = ""
var anotherEmptyString = String()

// 빈 문자열 확인
if emptyString.isEmpty {
    print("Nothing to see here!")
}

// 문자열의 개별 문자 출력
for chr in "Dog! 🥬대한민국" {
    print(chr)
}

// 문자 상수 선언
let exclamationMark : Character = "!"

// 문자 배열을 이용한 문자열 출력
let catCharacters : [Character] = ["C", "a", "t", "!", "🍔"]
let catString = String(catCharacters) // 문자 배열을 String으로 전환
var catString1 : String = String(catCharacters) // 정석 표현
catString1.append(exclamationMark) // 문자 추가

// ----
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message)
// "3 times 2.5 is 7.5"

// 문자 길이
let str = "12345.6789"
print("str has \(str.count) character")

// 문자열 index
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// greeting[String.Index(encodedOffset: 1)]
greeting[greeting.index(before: greeting.endIndex)] // 마지막 index의 전 값이 나온다! (마지막값은 \n이 있어서 !가 나온 것!)
greeting[greeting.index(after: greeting.startIndex)] // 첫번째 거 다음 문자!
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index] // 7번째 위치한 값

// 문자열의 개별 문자 접근
print(greeting)

for index in greeting.indices{ // index값들이 저장되어있음
    print("\(greeting[index])", terminator:"") // terminator는 옆으로 나온다
}

// 문자열의 삽입과 삭제
print() // 기본적으로 '\n'이 들어있다!
var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex) // 해당 인덱스에 문자를 삽입!
welcome1.insert(contentsOf:" there", at: welcome1.index(before: welcome1.endIndex)) // 해당 인덱스의 before에 문자를 삽입!
welcome1.remove(at: welcome1.index(before: welcome1.endIndex)) // 해당 인덱스의 문자 제거!
print(welcome1)

let range = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
welcome1.removeSubrange(range) // 6글자 전 인덱스부터 마지막 인덱스까지의 문자를 제거! (범위로 제거하기)
print(welcome1)

// 부분 문자열
let greeting1 = "Hello, World!"
let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex // 해당 문자가 있는 첫번째 인덱스를 찾아라
// ?? : nil(null)을 허용하면서 앞의 조건값에 해당하는 것이 없으면 endIndex를 수용한다. 첫번째 물음표 => ','가 없으면, 두번째 물음표 => endIndex를 불러라!

let beginning = greeting1[..<index1]
print(beginning)

// 접두사와 접미사 비교
let romeoAndJuliet = [
    "Act1 Scene 1 : Verona, A public place",
    "Act1 scene 2 : Capulet's mansion",
    "Act1 scene 3 : A room in Capulet's mansion",
    "Act1 scene 4 : A street outside Capulet's mansion",
    "Act1 scene 5 : The Great Hall in Capulet's mansion",
    "Act2 scene 1 : Outside Capulet's mansion",
    "Act2 scene 2 : Capulet's orchard",
    "Act2 scene 3 : Outside Friar Lawrence's cell",
    "Act2 scene 4 : A street in Verona",
    "Act2 scene 5 : Capulet's mansion",
    "Act2 scene 6 : Friar Lawrence's cell",
]

var act1SceneCount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act1"){
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in Act 1")


var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

// Any, nil
// Any : Swift의 모든 타입을 지칭하는 키워드
// nil : 없음을 의미하는 키워드

// Any
var someAny : Any = 100

someAny = "어떤 타입도 수용 가능하다"
someAny = 123.12

let someAny1: Double = someAny as! Double // Any의 형 변환 방법
print(someAny1)

//someAny = nil // nil값을 포함할 순 없다!

// Tuple
// Tuple 사용전 선언 및 출력방법
var dialCode = 82
var isocode = "KR"
var name = "Korea"

print(dialCode, isocode, name)

// Tuple 사용
var country = (82, "KR", "Korea")
print(country.0, country.1, country.2)

var country1 = (dialCode1 : 82, isocode1 : "KR", name1 : "Korea")
print(country1.dialCode1, country1.isocode1, country1.name1)

let person1 = ("John Doe", "201 Main Street", 35)
print("\(person1.0) lives at \(person1.1) and is \(person1.2) years old")

// Type 별칭
// 기본 Type이든 사용자 Type이든 별칭을 사용할 수 있음

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age : MyInt = 20
let year : YourInt = 2020

print(year)
