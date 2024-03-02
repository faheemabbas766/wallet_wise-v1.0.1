class User {
  final String id;
  final String name;
  final String email;
  final String contact;
  final String country;
  final String city;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.contact,
    required this.country,
    required this.city,
  });

  factory User.fromMap(Map<String, dynamic> data, String id) {
    return User(
      id: id,
      name: data['Name'] ?? '',
      email: data['Email'] ?? '',
      contact: data['Contact'] ?? '',
      country: data['Country'] ?? '',
      city: data['City'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Name': name,
      'Email': email,
      'Contact': contact,
      'Country': country,
      'City': city,
    };
  }
}
