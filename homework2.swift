# IOS11-HW

//1.Write a function that returns tuple.

func dateInfo() -> (Int,Int,Int)
{
	let day = 18
	let month = 10
	let year = 2017
	
	return(day,month,year)
}

let dateElements = dateInfo()
print("Day : \(dateElements.0)")
print("Month : \(dateElements.1)")
print("Year : \(dateElements.2)")

print("*******************")

//2.Write a function that returns tuple with parameter labels.

func courseInfo() -> (name: String, instructor: String ,section: Int)
{
	let name = "N11-IOS Programming with Swift"
	let instructor = "Suat Karakusoglu "
	let section = 1
	
	return (name,instructor,section)
}
print(courseInfo())
print("*****************")

//3.Write switch control that checks a tuple values and executes different cases.

typealias trafficRule = (vehicleType: String, speed: Int)

func trafficPenalty(_ rules: trafficRule)
{
	switch rules
	{
		case let (vehicleType,speed) where vehicleType=="Car" && speed > 120 :
		print("You should go slower")
		case let (vehicleType,speed) where vehicleType=="Pickup" && speed < 90 :
		print("Your speed is normal")
		default:
		print("You should obey traffic rules")
	}
}
let car1 = trafficRule("Car",190)
let car2 = trafficRule("Pickup",75)
trafficPenalty(car1)
trafficPenalty(car2)

print("****************************")

//4.Put the tuple type into typealias and use it in a function while returning.

typealias shoes = (name: String,color: String ,number: Int)

func shoesInfo(_ name: String, _ color: String , _ number: Int) -> shoes 
{
	return(name,color,number)
}

let shoes1 = shoesInfo("Adidas","White", 45)
let shoes2 = shoesInfo("Nike","Black",44)

print(shoes1.name)
print(shoes1.color)
print(shoes1.number)
print(shoes2.name)
print(shoes2.color)
print(shoes2.number)

print("*********************")
//5.Create an array with 5 elements, different country cities are preferred.

var citiesInCanada: Array<String> = 
[
	"Toronto",
	"Vancouver",
	"Montreal",
	"Ottowa",
	"Calgary"
]
print("Array is created. ")
print("*****************")

//6.Loop over the created array and process the elements using for loop.

for cities in citiesInCanada {
	print("Canada city \(cities)")
}

citiesInCanada.append("Mississauga")  

print("Number of Canada city : \(citiesInCanada.count)")

citiesInCanada.insert("Gatineau", at: 3)
citiesInCanada.remove(at: 5)

print("After inserting and removing")

for cities in citiesInCanada 
{
	print("Canada city \(cities)")
}

