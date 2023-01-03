import Foundation

//Вы должны иметь 2 родительских(базовых) классов и по 2 наследующихся класса
//Каждый класс должен иметь не менее 3 переменных(1 из них - массив)
//Все свойства внутри классов должны быть закрытыми(приватными)
//Для массивов создать методы для добавления элемента, переопределения и удаления
//Вы должны иметь хотябы 1 закрытый метод внутри каждого класса
//Для каждого класса делать принт, говорящий о инициализации либо деинициализации элемента
//
//Когда закончите с подготовкой классов - создать по 3 объекта каждого из классов и пользуясь полиморфизмом и оператором is отобразить разные данные в консоль
//Когда перестаете работать с каким-то объектом - деинициализовать его
//Посчитать сколько переменных остались живыми(не были деинициализированы)

var dataBase = Passenger()

var firstCar = Car(wheels: 4, seats: 5, marka: "Mercedes-Benz", model: "S580", year: 2023)

var chyngyz = Passenger(name: "Chyngyz", surname: "Karachalov", age: 14)
var erzhan = Passenger(name: "Erzhan", surname: "Tokochev", age: 14)
var raul = Passenger(name: "Raul", surname: "Karryanov", age: 18)
var temirlan = Passenger(name: "Temirlan", surname: "Sydykov", age: 18)
var kurmanbek = Passenger(name: "Kurmanber", surname: "Berikov", age: 14)

dataBase.addPassenger(model: chyngyz)
dataBase.addPassenger(model: erzhan)
dataBase.addPassenger(model: raul)
dataBase.addPassenger(model: temirlan)
dataBase.addPassenger(model: kurmanbek)

dataBase.getCount()

dataBase.removePassenger(model: temirlan)

dataBase.getCount()
dataBase.showAllPassengersInfo()


