class School {
  final String name;
  final String address;
  final String numberOfStudents;
  final String numberOfTeachers;

  School({
    required this.name,
    required this.address,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      name: json['School Name'],
      address: json['School Address'],
      numberOfStudents: json['Number of Students'],
      numberOfTeachers: json['Number of Teachers'],
    );
  }
}
