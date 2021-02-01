import UIKit

// Tuple을 사용한 할당 연산자
let (x1, y1) = (1, 2)
print(x1, y1)

let (x2, y2) = (3, "Kim")
print(x2, y2)

// 사칙 연산자
print(1 + 2)
print(3 - 2)
print(4 * 3)
print(10 / 3)
print(10.0 / 3.0)
print(9 % 4)

// 단항 음수 연산자
let one = 1
let minusOne = -one
let plusoOne = -minusOne
print(one, minusOne, plusoOne)

// 비교 연산자
1 == 1
2 != 1
1 > 2
1 >= 2
2 <= 1

let name = "world"
if name == "world"{
    print("Hello World!")
}else{
    print("I'm sorry \(name), but I don't recognize you.")
}

(1, "zebra") < (2, "apple") // 튜플의 경우 1번째 값을 비교해서 큰쪽이 있으면 비교 후 종료
(3, "apple") < (3, "bird") // 첫번째 값을 비교후에도 비교가 되지 않으면 두번째 값으로 비교
(4, "dog") == (4, "dog")
("blue", -1) < ("purple", 1)

// 삼항 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20) // 앞에가 true 뒤에가 false
print(rowHeight)

// NIL 병합 연산자
let defaultColorName = "red"
var userDefinedColorName : String? // 이값의 default 값은 nil이다 <= optional 변수
var colorNameToUser = userDefinedColorName ?? defaultColorName // userDefinedColorName이 nil값이라면 defaultColorName을 사용하겠다!
print(colorNameToUser)

userDefinedColorName = "green"
colorNameToUser = userDefinedColorName ?? defaultColorName
print(colorNameToUser)

// 범위 연산자

for i in 1...10{ // ...는 범위!
    print(i)
}

// 1에서 10까지의 합 구하기
var sum1 = 0
for i in 1...10{
    sum1 += i
}
print("1~10의 합계 : \(sum1)")

for i in 1..<10{
    print("5 X \(i) = \(5 * i)")
}

// for문을 이용하여 인원번호와 이름 출력하기(인원번호는 1번부터)
let names = ["Anna", "Alex", "Brian", "Jack"]

// Person 1 is called Anna
for i in 0..<names.count{
    print("Person \(i+1) is called \(names[i])")
}

// 배열을 다른 배열로 할당 후 출력하기
let a1 = [-1, -2, -3, 0, 1, 2, 3]
let b1 = a1[2...] // a1배열의 2번 index부터 끝까지
print(b1)
print(b1.count)
print(a1[1])
print(b1[2]) // b1을 출력하고자 하면 a1의 길이와 순서에 맞추어야 출력됨

print("---------")

for i in 2..<a1.count{
    print(b1[i])
}

let b2 = a1[...2] // ...2는 2번째 인덱스까지
let b3 = a1[..<2] // ..<는 2번째 인덱스 전까지

print(names)

for name in names[2...]{
    print(name)
}

for name in names[...2]{
    print(name)
}

for name in names[..<2]{
    print(name)
}
    
let range = ...5 // 5전까지의 값들을 가지고 있음(음수포함!)
print(range)
range.contains(7) // 해당값이 범위안에 존재하는지 확인
range.contains(4)
range.contains(-1)
range.contains(-10000)

// 논리 부정 연산자
let allowedEntry = false
if !allowedEntry{ // true가 아니라면! (==false)
    print("Access denied!")
}

// 논리 곱연산자
let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan { // 둘다 true
    print("Welcome!")
}else{
    print("Access denied!")
}

if enteredDoorCode || passedRetinaScan { // 둘다 false
    print("Welcome!")
}else{
    print("Access denied!")
}


















