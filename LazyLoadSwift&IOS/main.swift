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
