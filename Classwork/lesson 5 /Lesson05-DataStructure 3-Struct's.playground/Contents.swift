struct Rectangle {
    var x: Float
    var y: Float
    var witdth: Float
    var height: Float
    
    func area() -> Float {
        return witdth*height
        
    }
}

let square = Rectangle(x: 0.0, y: 0.0, witdth: 100.0, height: 100.0)
square.area()


