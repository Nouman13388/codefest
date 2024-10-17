class User {
  String id;
  String name;
  String email;
  String role; // 'admin', 'team_lead', 'team_member'
  List<String> workspaceIds;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.workspaceIds,
  });

  // Method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'workspaceIds': workspaceIds,
    };
  }

  // Method to create User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
      workspaceIds: List<String>.from(json['workspaceIds']),
    );
  }
}
