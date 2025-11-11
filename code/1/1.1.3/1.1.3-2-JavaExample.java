public class Main {
    public static void main(String[] args) {
        System.out.println("Hello from Java!");
        User user = new User("Hilmi");
        user.greet();
    }
}

class User {
    private String name;

    public User(String name) {
        this.name = name;
    }

    public void greet() {
        System.out.println("Hello, " + name + "!");
    }
}