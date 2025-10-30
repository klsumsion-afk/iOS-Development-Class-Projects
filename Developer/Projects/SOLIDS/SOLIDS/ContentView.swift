
//Bug Identification Log Basic FakeApp

//Single Responsibility -
//Open/Closed -
//Liskov Substitution -
//Interface Segregation -
//Dependency Inversion -
//Dependency Injection -
//Protocol Oriented Programming -

protocol IdentifyDifferentBugs {
    func legsCount()
}

class Bug {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
    
}

class Hexapoda: Bug {
    
    
}

class Chelicerata: Bug {
 
    
    
}

class Myriapoda: Bug {

    
    
}
