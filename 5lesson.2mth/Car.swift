import Foundation

class Car: Vehicle {
    
    private var marka: String
    private var model: String
    private var year: Int
    
        init(){
            self.marka = ""
            self.model = ""
            self.year = 0
            super.init(wheels: 0, seats: 0)
        }
    
        init(wheels: Int, seats: Int, marka: String, model: String, year: Int) {
        self.marka = marka
        self.model = model
        self.year = year
        super.init(wheels: wheels, seats: seats)
    }
    func printInfo(){
        print("\(marka). Количество этажей - \(model). Общая площадь - \(year)")
    }
}




