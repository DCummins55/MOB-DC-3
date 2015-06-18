struct rectangle {
    var X: Float
    var Y: Float
    var width: Float
    var height: Float
    
}

let square = rectangle(X: 0.0, Y: 0.0, width: 100.0, height: 100.0)



// Classes vs stucts 


// classes pass by reference 


class Car() {
    var wheels: int {
        
        init(wheels: Int) {
            self.wheels = wheels
            
        }
        
    }
    struct line {
        var length: Int
    }
    
    
    var myCar = Car(wheels: 4)
    myCar.wheels = 10
    
    var thomasCar = myCar
    thomasCar.wheels
    
    var
}

