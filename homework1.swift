# IOS11-HW

// 1) Write two functions that overload of each others

func calculation(a: Int)->Int
{
	return (a+a)
}
func calculation(a: Double, b: Double, c:Double)->Double
{
	return (a*b)+c
}

//Call
let result1 = calculation(a: 10)
let result2 = calculation(a: 5.5, b: 6, c: 7.8)
print("This is first calculation \(result1)")
print("This is second calculation \(result2)")

// 2) Write a function which has default parameter value

func PersonName(name: String)
{
	print("\(name)")
}

//Call
PersonName(name: "Batuhan")

// 3) Write a function which has one paremeter and one variadic parameter

func PersonalInfo(name: String... , surname: String)
{
	print("Person name is \(name)  \(surname).")
}

//Call
PersonalInfo(name: "Ali","Kemal", surname: "Sunal")

// 4) Write a function which has ignored external parameter name.

func trial(_ text: String)
{
	print("\(text).")
}

//Call
trial("This is trial")

// 5) Write a function inside a function.

func function1()
{
	func function2()
	{
		print("Function2 is within the the function1 ")
	}
	function2()
}

// Call
function1()

// 6) Write a recursive function.

func count(number: Int)
{
	print(number)
	
	if number<100 {
	count(number: number+10)
	}
}

// Call
count(number: 10)

// 7) Write typealias for a function type which has different parameter types.

typealias someAlias = String

func function(alias: someAlias)
{
	print("\(alias).")
}

//Call
function(alias: "This is typealias example")

// 8) Pass function as a value to another function.

func multiply(num1: Int, num2: Int)->Int
{
	return num1*num2
}

//Call
let multiplication: (Int, Int) -> Int = multiply
print("result = \(multiplication(30,40))")
