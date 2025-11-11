import Foundation

print("Hello from Swift!")

class User {
    var name: String

    init(_ name: String) {
        self.name = name
    }

    func greet() {
        print("Hello, \(name)!")
    }
}

let user = User("Hilmi")
user.greet()