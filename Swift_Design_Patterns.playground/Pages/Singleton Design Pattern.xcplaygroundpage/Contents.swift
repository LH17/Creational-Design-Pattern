//: [Previous](@previous)

/* In swift we define Singleton classes by using the `sattic` keyword. It means that the object is going to be instantiated only once. Static properties are lazy initialised and will not be instantiated until called.
 * There is only one copy of this object and is used by the other objects globally
 * We can see the usage in Apple frameworks as well.
 *
 *
 // Shared url session
 let urlSession = URLSession.shared

 // user defaults
 let userDefaults = UserDefaults.standard
 */

class Vehicle {
    static let sharedInstance = Vehicle()
    private init() {}
    
    func getName() -> String {
        return "Car"
    }
}


Vehicle.sharedInstance.getName()
//: [Next](@next)
