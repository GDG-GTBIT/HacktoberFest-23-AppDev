class CustomUser {
  final String uid;
  CustomUser({required this.uid});
}

class UserData {
  final String? uid;
  final String name;
  final String subject;
  final int strength;

  UserData(
      {required this.uid,
      required this.name,
      required this.subject,
      required this.strength});
}
