//: [Previous](@previous)

// Abstract Factory
protocol FurnitureFactory {
    static func createTable() -> Table
    static func createChair() -> Chair
}

// Abstract product Table
protocol Table {
    func count() -> Int
}

// abstarct product CHair
protocol Chair {
    func count() -> Int
}

// concrete factory
class Factory: FurnitureFactory {

    static func createChair() -> Chair {
        return MyChair()
    }
    
    static func createTable() -> Table {
        return MyTable()
    }
}

// concrete product MyChair conforms to Chair
private class MyChair: Chair {
    func count() -> Int {
        return 4
    }
}

// concrete product MyTable conforms to Table
private class MyTable: Table {
    func count() -> Int {
        return 1
    }
}

let chair = Factory.createChair()
chair.count() // 4

let table = Factory.createTable()
table.count() // 1

//: [Next](@next)
