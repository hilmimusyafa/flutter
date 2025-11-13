void main() {
  // Data that would come from app state
  bool isUserAdmin = true;
  bool isPremiumSubscriber = false;
  List<String> availableCourses = ['Dart Basics', 'Flutter UI'];

  // Build a dynamic list of menu items
  List<String> navigationMenu = [
    'Home',
    'Profile',

    // Collection 'if': Show 'Premium' only if subscribed
    if (isPremiumSubscriber) 'Premium Content',

    // Collection 'if': Show 'Admin' only if admin
    if (isUserAdmin) 'Admin Dashboard',

    // Collection 'for': Add all available courses
    for (var course in availableCourses) 'View Course: $course',

    'Logout'
  ];

  print('--- Generated Menu ---');
  // Print the final list
  for (var item in navigationMenu) {
    print(item);
  }
