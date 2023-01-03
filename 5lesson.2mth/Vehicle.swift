import Foundation

class Vehicle {
  private var wheels: Int
  private var seats: Int
  private var passengers = [Passenger]()

  init(wheels: Int, seats: Int) {
    self.wheels = wheels
    self.seats = seats
    print("Машина ( прошла инициализация )")
  }

  deinit {
    print("Машина ( прошла деинициализация )")
  }

  private func startEngine() {
    print("Двигатель завелся")
  }

  func addPassenger(name: Passenger) {
    passengers.append(name)
  }
    func getCount(){
        print("Количество пассажиров - \(passengers.count)")
    }

    func removePassenger(model: Passenger){
        let index = getPassengerIndexBy(name: model.name, surname: model.surname, age: model.age)
        passengers.remove(at: index)
    }
    
    func getPassengerIndexBy(name: String, surname: String, age: Int) -> Int {
        var indexToReturn: Int = -1
        for (indx, pas) in passengers.enumerated() {
            if pas.name == name &&
                pas.surname == surname &&
                pas.age == age {
                indexToReturn = indx
                break
            }
        }
        return indexToReturn
    }
    
    func addPassenger(model: Passenger){
        passengers.append(model)
    }
    
    func showAllPassengersInfo(){
        for (index, passenger) in passengers.enumerated(){
            print("#\(index + 1) Имя - \(passenger.name) Фамилия - \(passenger.surname) Возраст - \(passenger.age)")
        }
    }

  }




