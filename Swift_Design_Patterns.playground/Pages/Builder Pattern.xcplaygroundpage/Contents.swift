//: [Previous](@previous)

// protocol  for creating a product
protocol ShoeShop {
    func produceShoe()
}

// class that conforms to ShoeShop protocol
class Nike: ShoeShop {
    func produceShoe() {
        print("Shoe Produced")
    }
}

// class that is initialsed with the object of the class that conforms to ShoeShop protocol
class Director {
    let shoeShop: ShoeShop
    init(shoeShop: ShoeShop) {
        self.shoeShop = shoeShop
    }
    func produce() {
        shoeShop.produceShoe()
    }
}


let nike = Nike()
let director = Director(shoeShop: nike)
director.produce()

//: [Next](@next)
