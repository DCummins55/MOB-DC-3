//Min needs two delegates Spokesperson is the delegate!, protical is a rule that a class could both pass values, to link the two tother tell delegate that :countryDelegate, then give them both the same function: now set a variable to make sure country has a delegate countrydelegate?, set variables, make function to preform, instead of making the rapping unfrorced with the "?", you make a if let statement and the forse unwrap delegate "Delegate = delagate, finally, you say call hey USA profor the function USA. Keep in mind that both the Parent and delegate have to have the same funcution you just dont have to call them both! very importante




//*****************country.swift

protocol countryDelegate {
    
    func negotiate()
}


class Country {
    var delegate: countryDelegate?
    
    func performNegotiation() {
        
        if let delegate = delegate {
         delegate.negotiate()
        }
       
    }
    
}



//****************Ambassador.swift



class Ambassador: countryDelegate {
    func negotiate() {
        println("I shall negotiate!")
    }
}








//******************


let USA = Country()
let Devin = Ambassador()

USA.delegate = Devin
USA.performNegotiation()









