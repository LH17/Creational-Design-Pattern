
// Protocol
protocol Fruit {
    func set(price: String?)
    func clone() -> Fruit
}

// Class Apple which implements the protocol
class Apple: Fruit {
    var count: Int
    var price: String?
    
    init(count: Int) {
        self.count = count
    }

    func set(price: String?) {
        self.price = price
    }
    
    // function definition for cloning the object
    func clone() -> Fruit {
        return Apple(count: self.count)
    }
}

let prototype = Apple(count: 4)
// Create a copy of existing object
let redApple: Apple = prototype.clone() as! Apple
redApple.count
// add own properties
redApple.set(price: "$2")
redApple.price // $2

// Create a copy of existing object
let greenApple: Apple = prototype.clone() as! Apple
greenApple.count
// add own properties
greenApple.set(price: "$4")
greenApple.price // $4
