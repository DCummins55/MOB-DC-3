func car(wheel: Int, doors: Int) {
    println("a sample car with \(wheel) wheels, and \(doors) doors")

}




//Classes data structions 


class Car {
    
    var wheels: Int
    var door: Int
    var name: String
    
    
    // intializaer method aka  initializer function 
    
    init() {
        wheels = 4
        door = 4
        name = "kia"
    }
    
}

var mycar = Car()
println(myCar.wheels)
println(mycar)



