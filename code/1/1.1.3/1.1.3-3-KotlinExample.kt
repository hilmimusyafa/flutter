fun main() {
    println("Hello from Kotlin!")
    val user = User("Hilmi")
    user.greet()
}

class User(private val name: String) {
    fun greet() {
        println("Hello, $name!")
    }
}