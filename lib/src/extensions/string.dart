extension StringExtension on String {
  bool get isSvg {
    return contains('.svg');
  }

  bool get isImage {
    return contains('.png') || contains('.jpg') || contains('.jpeg');
  }

  //greet user based on time of day, for example, morning should be 'Good Morning, ☀️'
  String get greetUser {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning, ☀️';
    } else if (hour < 17) {
      return 'Good Afternoon, 🌤️';
    } else {
      return 'Good Evening, 🌙';
    }
  }
}
