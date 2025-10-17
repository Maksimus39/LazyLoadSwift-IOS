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




// -------------------------------------- 20 Массивы --------------------------------

//let salary: Array<Int> = [10, 20, 30, 40, 50, 60, 70, 80, 90]
//
//
//let children:Array<String> = ["Maksim", "Larisa", "Andrey", "Bogdan"]
//
//print(children[0])
//
//
//var numbers:[Int] = [39, 25, 89]
//print(numbers.count)
//
//numbers.append(100)
//print(numbers)
//
//numbers.insert(26, at: 0)
//print(numbers)
//
//
//numbers.remove(at: 0)
//print(numbers)


// ------------------------------------ 21 циклы ------------------------------------

//let salary = [40000, 40000, 40000, 40000,40000, 40000, 40000, 40000,40000, 40000, 40000, 40000,40000, 40000, 40000, 40000, 34000, 27000]
//print(salary.count)
//
//var total = 0
//for i in 0..<salary.count {
//    total += salary[i]
//}
//print("Общая сумма: \(total) рублей")
//
//
//var total2 = 0
//for sum in salary {
//    total2 += sum
//}
//print("Общая сумма: \(total2) рублей")
//
//let total3 = salary.reduce(0, +)
//print("Общая сумма: \(total3) рублей")


// ------------------------------------------ 29 Debugger -------------------

//var a = [1, 2, 3, 4, 5]
//
//if a.count > 5 {
//    a.append(1)
//} else {
//    a.append(9)
//}
//
//if a.count > 5 {
//    a.append(1)
//} else {
//    a.append(9)
//}

/*
 первая кнопка это сам Debugger его ставим и убираем
 вторая кнопка это выход из Debugger
 третья кнопка это шаг в Debugger
 а четвёртая и пятая кнопки они делают Debugger с функциями
 */

//func sumNumber(a:Int, b:Int, c:Int) {
//    print(a + b + c)
//}
//
//
//sumNumber(a: 2, b: 4, c: 6)



// ------------------------------------------ 30 создание String и многострочные литералы -------------------

//let a = 10
//let b = 20
//
//let string = "a:\(a) + b:\(b) = summ: \(a + b)"
//print(string)
//
//let text = """
//    Я длинный текст и так меня пишут через три кавычки
//    """
//
//print("text: \(text)")



// ----------------------------------------- 31 циклы и массивы ----------------------------------------------

//var a = [Int]()
//
//for _ in 0...10 {
//
//    let randomValue: Int = Int.random(in: 0...10)
//    a.append(randomValue)
//
//}
//
//print("a: \(a)")


//func makeArray() -> [Int]{
//    var array = [Int]()
//
//    for _ in 0...10 {
//
//        let randomValue: Int = Int.random(in: -10000...(-10))
//        array.append(randomValue)
//
//    }
//    return array
//}
//
//
//let a = makeArray()
//print(a)
//
//
//// 1 найти максимальное число
//
//print(a.max() ?? 0)
//
//
//// 2 найти минимальное число
//
//print(a.min() ?? 0)
//
//
//// 3 возвести в квадрат
//
//for el in a {
//    let res = el * el
//    print(res)
//}
//
//
//// 4 как удалить чётные элементы из массива
//
//let filterRes = a.filter{$0 % 2 == 0}
//print("filterRes -> \(filterRes)")




// -------------- 35 Введение в расширенные типы ----------------------------

//struct User {
//    let name:String
//    var age: Int
//
//    func printToConsole() {
//        print("Hello, my name is \(name) and I am \(age) years old")
//    }
//}
//
//var user = User(name: "Maksim", age: 42)
//user.printToConsole()



// ------------------------------------------- Основы классов ---------------------------------------------------

// v1

//class Person {
//    let name = "Maksim"
//    let surname = "Minakov"
//}
//
//
//let person = Person()
//print("person: \(person.name)")
//print("person: \(person.surname)")



// v2

//class PersonTwo {
//    var name: String
//    var surname: String
//
//    init(nameArg: String, surname: String) {
//        name = nameArg
//        self.surname = surname
//    }
//
//    func getFullName() -> String {
//        return "\(name) \(surname)"
//    }
//}
//
//let personTwo = PersonTwo(nameArg: "Andrey", surname: "Minakov")
//print(personTwo.name)
//print(personTwo.surname)
//print(personTwo.getFullName())


//class Car {
//    var model: String = "Toyota"
//    var color: String = "White"
//}
//
//let car = Car()
//print(car.model)
//print(car.model)
//
//let car2 = Car()
//print("car2 -> \(car2)")
//
//
//class Book {
//    let author: String
//    let name: String
//
//    init(author: String, name: String) {
//        self.author = author
//        self.name = name
//    }
//}
//
//let book = Book(author: "J London", name: "Book name")
//print(book.author)




// --------------------------- 40 Основы наследования классов -------------------------------------

//class A {
//    let one: String
//
//    init(one: String) {
//        self.one = one
//    }
//}
//
//class B: A {
//    let two: String
//
//    func getOne() -> Int {
//        return 11
//    }
//
//    init(one: String, two: String) {
//        self.two = two  // Сначала инициализируем свои свойства
//        super.init(one: one)  // Затем вызываем родительский инициализатор
//    }
//}
//
//
//class C: B {
//    let three: String
//
//    override  func getOne() -> Int {
//        return super.getOne() + 11
//    }
//
//
//    func getTwo () -> [Int] {
//        return [getOne(), getOne(), getOne()]
//    }
//
//    init(one: String, two: String, three: String) {
//        self.three = three
//        super.init(one: one, two: two)
//    }
//}
//
//let classC = C(one: "one", two: "two", three: "three")
//let classB = B(one: "one", two: "two")
//print(classC.one)
//print(classC.two)
//print(classC.three)
//
//
//print(classB.getOne())
//print(classC.getOne())
//print(classC.getTwo())



// ------------------------------------------ 41 свойства классов --------------------------------

//class A {
//    lazy var one = "Hello"
//}
//
//let a = A()
//print(a)
//print(a.one)
//
//
//class B {
//    var one:String {
//        get {
//            return "Hello"
//        }
//
//        set {
//            print(newValue)
//        }
//    }
//}
//
//let b = B()
//print(b.one)
//b.one = "World"


//class personAge {
//    var age:Int
//
//    var stringAge:String {
//        get {
//            return String(age)
//        }
//
//        set {
//            age = Int(newValue) ?? 0
//            print("age -> \(age)")
//        }
//    }
//
//    init(age: Int) {
//        self.age = age
//    }
//}
//
//var maxAge = personAge(age: 42)
//print("maxAge.stringAge -> \(maxAge.stringAge)")
//
//maxAge.stringAge = "43"
//
//
//class PersonName {
//    var name:String {
//        willSet {
//            print("newValue -> \(newValue)")
//        }
//
//        didSet {
//            print("oldValue -> \(oldValue)")
//        }
//    }
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let personName = PersonName(name: "Maksim")
//personName.name = "Larisa"


// ----------------------------- 42 инициализация и деинициализация классов -----------------


//class Figure {
//    let sideA: Int
//    let sideB: Int
//
//    init(sideA: Int, sideB: Int) {
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//
//    init(side: Int) {
//        self.sideA = side
//        self.sideB = side
//    }
//}
//
//let one = Figure(sideA: 3, sideB: 4)
//let two = Figure(side: 5)
//
//print(one.sideA)
//print(two.sideA)
//
//
//
//// optional initializator
//
//class Square {
//    let sideA: Int
//    let sideB: Int
//
//    init?(sideA: Int, sideB: Int){
//        guard sideA > 0 && sideB > 0 else {return nil}
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//}
//
//let a = Square(sideA: 10, sideB: 20)
//print(a!)
//
//
//// наследование
//
//class SquareTwo {
//    let sideA: Int
//    let sideB: Int
//
//    init?(sideA: Int, sideB: Int){
//        guard sideA > 0 && sideB > 0 else {return nil}
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//}
//
//class childrenSquareTwo: SquareTwo {
//
//}
//
//let children = childrenSquareTwo(sideA: 10, sideB: 20)
//
//
//
//// ovveride
//
//class ovverideSquareTwo {
//    let sideA: Int
//    let sideB: Int
//
//    init(sideA: Int, sideB: Int){
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//}
//
//class childrenOvverideSquareTwo:ovverideSquareTwo {
//    override init(sideA: Int, sideB: Int){
//        super.init(sideA: sideA * 2, sideB: sideB * 2)
//    }
//}
//
//let res = childrenOvverideSquareTwo(sideA: 10, sideB: 20)
//
//
//
////
//
//class A1 {
//    init(){
//        print("1")
//    }
//}
//
//class B1: A1 {
//    override init(){
//        print("2")
//    }
//}
//
//let resAB = B1()
//
//
//// required
//
//class Required {
//    let sideA: Int
//    let sideB: Int
//
//    init(sideA: Int, sideB: Int){
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//
//    required init(side:Int){
//        self.sideA = side
//        self.sideB = side
//    }
//}
//
//class RequiredTwo: Required {
//    init(){
//        super.init(sideA: 10, sideB: 20)
//    }
//
//    required init(side: Int) {
//        super.init(side: side)
//    }
//}
//
//
//let r = RequiredTwo(side: 2)
//print(r.sideA)
//
//
//// вспомогательный конструктор convinince
//
//class Convinince {
//    let sideA: Int
//    let sideB: Int
//
//    init(sideA: Int, sideB: Int){
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//
//    convenience init(side: Int){
//        self.init(sideA: 1, sideB: 2)
//    }
//}
//
//let c = Convinince(side: 2)
//
//
//
//// deinit
//
//class Deinit {
//    let a:Int
//
//    init(a: Int){
//        self.a = a
//    }
//
//    deinit {
//        print("deinit")
//    }
//}
//
//let d = Deinit(a: 10)
//print("d.a -> \(d.a)")
//print("d -> \(d)")



// ----------------------------- 45 методы и свойства самих классов -----------------------------------------


//class Square {
//
//    private(set) var sideA: Int
//    private(set) public var sideB: Int
//    static let zeroSide = 12
//
//
//    init(sideA: Int, sideB: Int) {
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//
//    func area() -> Int {
//        sideA * sideB
//    }
//
//
//    static func makeZeroSquare() -> Square {
//        return Square(sideA: zeroSide, sideB: zeroSide)
//    }
//}
//
//
//func makeZeroSquare() -> Square {
//    Square(sideA: Square.zeroSide, sideB: Square.zeroSide)
//}
//
//let res = Square(sideA: 10, sideB: 20)
//print(res.area())
//
//print("Square.zeroSide -> \(Square.zeroSide)")
//
//let resZeroSide = Square(sideA: Square.zeroSide, sideB: Square.zeroSide)
//print("resZeroSide -> \(resZeroSide)")
//
//let square = Square.makeZeroSquare()
//print("square.area -> \(square.area())")
//
//
//
//
//class A {
//    static var a:Int = 10
//
//    class  func some(){
//        print(a)
//    }
//}
//
//class B: A {
//
//    override static func some() {
//        print("a -> \(a * a)")
//    }
//}
//
//let ab = B.some()
//
//B.some()



// ---------------------------------------------- 46 Stuct ----------------------------------------------------------

//struct A {
//    var age:Int
//    let name:String
//
//    mutating func incrementAge(){
//        age += 1
//        print(age)
//    }
//
//    func printAge(){
//        print(age)
//    }
//
//    init(age: Int, name: String) {
//        self.age = age
//        self.name = name
//    }
//}
//
//var user = A(age: 42, name: "Maksim")
////user.incrementAge()
//user.incrementAge()


//struct Maksim {
//    let name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    mutating func ageCount(){
//        age += 1
//        print(age)
//    }
//}
//
//var person = Maksim(name: "Maksim", age: 42)
//person.ageCount()


//struct Family {
//    let name: String
//    let surname: String
//    var age: Int
//    var children:Int?
//}
//
//var familyMaksim = Family(name: "Maksim", surname: "Minakov", age: 42, children: 2)
//print("familyMaksim -> \(familyMaksim)")
//
//var familyLarisa = Family(name: "Larisa", surname: "Minakova", age: 39, children: 2)
//print("familyLarisa -> \(familyLarisa)")
//
//
//var familyAndrey = Family(name: "Andrey", surname: "Minakov", age: 12)
//print("familyAndrey -> \(familyAndrey)")
//
//
//var familyBogdan = Family(name: "Bogdan", surname: "Minakov", age: 8)
//print("familyBogdan -> \(familyBogdan)")




// ------------------------------------ 49 перечисления  -------------------

//enum PersonWorkingMode: Int {
//    case office = 5, remote = 6, mixed = 7
//}
//
//struct Person {
//    let name: String
//    let age: Int
//    let workingMode: PersonWorkingMode
//}
//
//var person = Person(name: "Maksim", age: 42, workingMode: .office )
//var personTwo = Person(name: "Larisa", age: 39, workingMode: .remote)
//
//
//let a = PersonWorkingMode(rawValue: 5)
//print("a -> \(a!)")
//
//print(PersonWorkingMode.office.rawValue)
//print(PersonWorkingMode.remote.rawValue)
//print(PersonWorkingMode.mixed.rawValue)
//
//
//switch person.workingMode {
//case .office:
//    print("Этот сотрудник работает в офисе")
//case .remote:
//    print("Этот сотрудник работает на дому")
//case .mixed:
//    print("Этот сотрудник работает гибридно")
//}



// ----------------------------- Универсальные шаблоны ----------------------------


//struct Stack<Element> {
//    private var elements: [Element] = []
//    
//    mutating func push(_ element: Element) {
//        elements.append(element)
//    }
//}
//
//// Использование
//var intStack = Stack<Int>()
//intStack.push(1)
//intStack.push(2)
//intStack.push(3)
//print(intStack)
//
//var stringStack = Stack<String>()
//stringStack.push("Apple")
//stringStack.push("Banana")
//print(stringStack)
//
//
//
//
//// test
//
//struct TestJeneric<T> {
//    let test:T
//}
//
//
//let testOne = TestJeneric(test: "Test")
//let testTwo = TestJeneric(test: 10)
//
//print("testOne -> \(type(of: testOne))")
//print("testTwo -> \(type(of: testTwo))")
//
//
//
//struct MoreJenericType<A, B, C> {
//    let a:A
//    let b:B
//    let c:C
//    
//    init(a: A, b: B, c: C) {
//        self.a = a
//        self.b = b
//        self.c = c
//    }
//}
//
//let aa = MoreJenericType(a: 1, b: 2, c: 3)
//let bb = MoreJenericType(a: "aa", b: "bb", c: "cc")
//let cc = MoreJenericType(a: true, b: false, c: true)
//let zz = MoreJenericType<Int, String, Bool>(a: 42, b: "Maksim", c: true)
//
//
//print("aa -> \(type(of: aa))")
//print("bb -> \(type(of: bb))")
//print("cc -> \(type(of: cc))")
//print("zz -> \(type(of: zz))")
//
//
//
//struct ScopeJeneric<T> {
//    
//    func test<M>(a:T, b:M) {
//        print(a, b)
//    }
//}
//
//let scopeOne = ScopeJeneric<Int>()
//scopeOne.test(a: 42, b: "Maksim")
//
//
//
//
//func sum<T: Numeric>(a:T, b:T) -> T {
//    a + b
//}
//
//print(sum(a: 1, b: 2))




// -------------------------- Расширения ---------------
//extension A {
//    func extInf(){
//        print(a + 10)
//    }
//}
//
//struct A {
//    let a : Int
//    
//    func printInfo(){
//        print(a)
//    }
//}
//
//let aa = A(a: 4)
//aa.printInfo()
//aa.extInf()
//print(aa)




// ------------------------------------------ Протоколы -------------------

//protocol Displayable {
//    var description: String { get }
//}
//
//struct Person: Displayable {
//    let name: String
//    let weight: Int
//    
//    var description: String {
//        return "Person: \(name), weight: \(weight)kg"
//    }
//}
//
//struct Table: Displayable {
//    let model: String
//    let const: Int
//    let weight: Int
//    
//    var description: String {
//        return "Table: \(model), weight: \(weight)kg"
//    }
//}
//
//struct SoftWare: Displayable {
//    let name: String
//    let key: String
//    let const: Int
//    
//    var description: String {
//        return "Software: \(name), key: \(key) const: \(const)"
//    }
//}
//
//let displayableList: [Displayable] = [
//    Person(name: "Maksim", weight: 91),
//    Table(model: "MacBook Air", const: 2, weight: 1),
//    SoftWare(name: "IOS", key: "1234", const: 4321)
//]
//
//// Теперь можем работать с массивом безопасно
//for item in displayableList {
//    print(item.description)
//}
