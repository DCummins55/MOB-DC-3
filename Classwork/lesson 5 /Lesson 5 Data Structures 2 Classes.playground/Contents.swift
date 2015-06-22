class Car {
    
    var wheels: Int
    var doors: Int
    var name: String?


    init(wheels: Int, doors: Int, name: String) {
        self.wheels = 18
        self.doors = 4
        self.name = name
        
}



    func drive() ->Bool {
        return true
    }
}


let myCar = Car(wheels: 4, doors: 4, name: "BMW")
myCar.drive()

class Lambo: Car {
    var spoiler: Bool?
}


let diablo = Lambo(wheels: 4, doors: 2, name: "Diablo")
diablo.spoiler = true


