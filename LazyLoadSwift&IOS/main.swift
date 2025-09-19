//// 9 - переменные константы и операторы присваивания
//
//let a : Int
//let b : Double
//let c : Float
//let d : String
//let e : Bool
//let f : Character
//
//
//// Принято писать переменные в верблюжем стиле camelCase
//
//let userAge : Int
//userAge = 2            // в константах не принято менять значение, оператор это не позволит
//print(userAge)
//
//
//let userName : String = "Maksim"     // Инициализация и присвоение
//
//
//print(userAge, userName)
//



// 10 Базовые орераторы


//let res = 4 + 4


//var age = 4
//age += 1
//print(age)


// 11 операторы условного перехода

// if switch ?:

//let age = 23
//
//print("Привет незнакомец")
//
//if age < 18 {
//    print("К сожалению ты слишком молод")
//} else if age >= 20 && age <= 25 {
//    print("Отличный возраст")
//} else {
//    print("К сожалению ты слишком стар")
//}




// 12 - Чтение информации из консоли

//print("Введите информацию в консоль:")
//let stringInputConsole = readLine()!
//print(stringInputConsole)


// 13 Опционалные значения

//var age : Int? = 0
//age = 1
//age = 10
//age = nil
//
//print(age ?? 10)


//var a : Int = 1
//var b : Int? = 1
//
//print(a == b)      // true а вот наоборот нельзя, в обычную переменную нельзя присваивать опциональный тип и математические операции нельзя делать
//
//let c : Int? = a   // 1
//print(c!)


// Извлечение опционала

// 1

//let aa : Int = 1
//let bb : Int? = 1
//let cc : Int? = nil
//
//if let bb  {
//    print("aa:", aa + bb)
//} else {
//    print("No")
//}


//if let usualCC = cc {
//    print("cc:", aa + usualCC)
//} else {
//    print( "No")
//}


// Небезопасное явное извлечение

//print(aa + bb!)                // ставится восклицательный знак, проверки не происходят в данном случае
//print(aa + сс!)                // а так не скомпилируется


// Неявная небезопасная распаковка

//let num : Int = 1
//let num2 : Int! = 1
//let num3 : Int! = nil

//print(num + num2)
//print(num2 + num3!)




// Значение по умолчанию

//let result : Int?? = 42
//
//if let res2 = result {
//    print("res2:", res2!)
//}
//
//print(result! ?? 0)





// 14 преобразование и приведение типов

// int

//let a = 1
//let b = 2.4
//let c = "34"
//let d = true
//let e = Character("Z")
//let f : Float = 3.14
//
//let intB = Int(b)
//let intC = Int(c)!
//let intF = Int(f)
//print(intB,intC,intF)

// из Character и bool - нельзя делать int


// Double

//let a1 = 1
//let b1 = 2.4
//let c1 = "34"
//let d1 = true
//let e1 = Character("Z")
//let f1 : Float = 3.14
//
//let doubleA = Double(b1)
//let doubleC = Double(c1)!
//let doubleF = Double(f1)
//print(doubleA, doubleC, doubleF)



// String

//let a2 = 1
//let b2 = 2.4
//let c2 = "34"
//let d2 = true
//let e2 = Character("Z")
//let f2 : Float = 3.14
//
//let stringB = String(b2)
//let stringC = String(c2)
//let stringF = String(f2)
//print(stringB, stringC, stringF) // строку мы можем создать из любого значения



// Float

//let a3 = 1
//let b3 = 2.4
//let c3 = "34"
//let d3 = true
//let e3 = Character("Z")
//let f3 : Float = 3.14
//
//let floatB = Float(b3)
//let floatC = Float(c3)!
//let floatF = Float(f3)
//print(floatB, floatC, floatF)



// Character

//let a4 = 1
//let b4 = 2.4
//let c4 = "34"
//let d4 = true
//let e4 = Character("Z")
//let f4 : Float = 3.14
//let z4 : Character = "H"

//print(z4)


// Bool

//let a5 = "True"
//let b5 = "false"
//let c5 = "YES"

// Способ 1: Ручное преобразование через сравнение
//let boolA = a5.lowercased() == "true"
//let boolB = b5.lowercased() == "true"
//let boolC = c5.lowercased() == "true" || c5.lowercased() == "yes"

//print(boolA) // true
//print(boolB) // false
//print(boolC) // true



// Привидение типов

//let a6 : Int = 1
//let b6 : String = "привет"


// Any

//let aAny : Any = 1
//let bAny : Any = "привет"
//
//var storage : Any = 1
//storage = true
//storage = "привет"
//print("storage -> : \(storage)")
//
//
//let cAny : Any = 1
//let dAny : Any = 2
//
//let result =  (cAny as! Int) + (dAny as! Int)
//print("result: -> \(result)")
//print(type(of: result))

// Есть ещё оператор is - его задача проверить булевым типом то какой он тип и с чем сравнивается

//let resultAny = cAny is Int
//print(resultAny)



// ------------------------------------------- 15 Делаем простой консольный калькулятор ----------------------------------------------

//print("Добро пожаловать в консольный калькулятор")
//print("Выберите операцию: + - * /")
//let operation = readLine() ?? ""
//
//print("Введите первое число:")
//let firstNumber = readLine() ?? ""
//
//print("Введите второе число:")
//let secondNumber = readLine() ?? ""
//
//print("Идёт вычисление примера...", firstNumber + " " + operation + " " + secondNumber)
//
//if let firstNumber = Int(firstNumber)  {
//    if let secondNumber = Int(secondNumber)  {
//        switch operation {
//        case "+" : print("Результат: ", String(firstNumber + secondNumber))
//        case "-" : print("Результат: ", String(firstNumber - secondNumber))
//        case "*" : print("Результат: ", String(firstNumber * secondNumber))
//        case "/" :
//            if secondNumber != 0 {
//                print("Результат: ", String(firstNumber / secondNumber))
//            } else {
//                print("Это неверная операция")
//            }
//        default: print("Error")
//        }
//    } else {
//        print("Вы ввели неверно второе число")
//    }
//} else {
//    print("Вы ввели неверно первое число")
//}




// -------------------------------- Function ---------------------------------------

//func sum(firstNumber: Int, secondNumber: Int) -> Int{
//   return firstNumber + secondNumber
//}
//
//print(sum(firstNumber: 4, secondNumber: 4))




// -------------------------------- 17 область видимости ---------------------------

//var a = 1
//var b = 2
//var c = 3
//
//func sum(){
//   print("sum -> :", a + b + c)
//}
//
//sum()
//
//
//res = 90
//print("res -> : \(res)")
//var res = 10
//print("res -> : \(res)")
//res = 20
//print("res -> : \(res)")





// -------------------------------- 18 Рефакторинг калькулятора с функцией ------------------


//print("Добро пожаловать в консольный калькулятор")
//print("Выберите операцию: + - * /")
//let operation = readLine() ?? ""
//
//print("Введите первое число:")
//let firstNumber = readLine() ?? ""
//
//print("Введите второе число:")
//let secondNumber = readLine() ?? ""
//
//print("Идёт вычисление примера...", firstNumber + " " + operation + " " + secondNumber)
//
//if let firstNumber = Int(firstNumber)  {
//    if let secondNumber = Int(secondNumber)  {
//        switch operation {
//        case "+" : print("Результат: ", String(firstNumber + secondNumber))
//        case "-" : print("Результат: ", String(firstNumber - secondNumber))
//        case "*" : print("Результат: ", String(firstNumber * secondNumber))
//        case "/" :
//            if secondNumber != 0 {
//                print("Результат: ", String(firstNumber / secondNumber))
//            } else {
//                print("Это неверная операция")
//            }
//        default: print("Error")
//        }
//    } else {
//        print("Вы ввели неверно второе число")
//    }
//} else {
//    print("Вы ввели неверно первое число")
//}


//func calculate() {
//    print("Добро пожаловать в консольный калькулятор")
//    
//    // Получаем операцию
//    let operation = getOperation()
//    
//    // Получаем числа
//    let firstNumber = getNumber(prompt: "Введите первое число:")
//    let secondNumber = getNumber(prompt: "Введите второе число:")
//    
//    // Выводим пример
//    print("Идёт вычисление примера...", "\(firstNumber) \(operation) \(secondNumber)")
//    
//    // Выполняем вычисление
//    performCalculation(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
//}
//
//func getOperation() -> String {
//    print("Выберите операцию: + - * /")
//    return readLine() ?? ""
//}
//
//func getNumber(prompt: String) -> Int {
//    while true {
//        print(prompt)
//        if let input = readLine(), let number = Int(input) {
//            return number
//        } else {
//            print("Вы ввели неверное число. Попробуйте еще раз.")
//        }
//    }
//}
//
//func performCalculation(firstNumber: Int, secondNumber: Int, operation: String) {
//    switch operation {
//    case "+":
//        print("Результат:", firstNumber + secondNumber)
//    case "-":
//        print("Результат:", firstNumber - secondNumber)
//    case "*":
//        print("Результат:", firstNumber * secondNumber)
//    case "/":
//        if secondNumber != 0 {
//            print("Результат:", firstNumber / secondNumber)
//        } else {
//            print("Ошибка: деление на ноль!")
//        }
//    default:
//        print("Неверная операция. Доступные операции: + - * /")
//    }
//}
//
//// Запускаем калькулятор
//calculate()





// 19 Свойства методы и опциональные цепочки

//let string = "Hello, world!"
//print(string.count)
//
//let num = 4.0
//print(num + 4)
//
//
//print(Int.max)
//print(Int.bitWidth)
//
//
//let z:String? = "Maksim"
//if let str = z {
//    print(str)
//}
//
//
//let zz : String? = "LARISA"
//print(zz?.uppercased() ?? " " )
