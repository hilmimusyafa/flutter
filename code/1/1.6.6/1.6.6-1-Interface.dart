// Interface (Kontrak)
abstract class Notifier {
  void sendNotification(String message); // Wajib diimplementasikan
}

// Class 1: Email Notifier
class EmailNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("Email sent: $message");
  }
}

// Class 2: SMS Notifier
class SMSNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("SMS sent: $message");
  }
}

void main() {
  Notifier email = EmailNotifier();
  Notifier sms = SMSNotifier();

  email.sendNotification("Welcome!");
  sms.sendNotification("Your code is 1234.");
}
