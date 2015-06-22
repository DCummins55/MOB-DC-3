class Car {
    var wheels: Int
    
    init(wheels: Int) {
       self.wheels = wheels
    }
   
}

struct Line {
    var length: Int
}

var myCar = Car(wheels: 4)
myCar.wheels = 10

var DevinCar = Car(wheels: 4)
DevinCar.wheels = 2

myCar.wheels
DevinCar.wheels

var myLine = Line(length: 10)
myLine.length = 20

var secondLine = myLine
secondLine.length = 20

myLine.length
secondLine.length







//var firstCar = Car(wheels: 4)
//var secondCar = Car(wheels: 8)

//firstCar = secondCar
//firstCar
//firstCar.wheels = 11
//firstCar
//secondCar



//var firstLine = Line(length: 10)
//var secondLine = Line(length: 20)
//firstLine
//secondLine
//firstLine.length = 15

