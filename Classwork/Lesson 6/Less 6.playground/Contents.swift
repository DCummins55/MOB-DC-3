func unlockapp(serialKey: String) -> Bool {
    let containProperLength = ProperLength(serialKey)
    let containSpecificValues = specficValues (serialKey)
    
    let result = containProperLength && containSpecificValues
    
    return true
}

func properLength(serialKey: String) -> Bool {
    let length = count(serialKey)
    let result = (length == 10) ? true : false
    
    return result
    
}

func specificValues(serialKey: String) -> Bool {
    let result = (serialKey as NSString).containstring("01")
    
    return result
    
}



let password = ("password")
unlockapp("password01")


//False 

unlockapp("lessthen10charecteres")



