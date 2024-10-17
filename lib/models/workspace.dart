class Workspace {
  String id;
  String name;
  String adminId; // ID of the admin who created the workspace
  List<String> teamLeadIds; // List of team leads
  List<String> memberIds; // List of team members

  Workspace({
    required this.id,
    required this.name,
    required this.adminId,
    required this.teamLeadIds,
    required this.memberIds,
  });

  // Method to convert Workspace to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'adminId': adminId,
      'teamLeadIds': teamLeadIds,
      'memberIds': memberIds,
    };
  }

  // Method to create Workspace from JSON
  factory Workspace.fromJson(Map<String, dynamic> json) {
    return Workspace(
      id: json['id'],
      name: json['name'],
      adminId: json['adminId'],
      teamLeadIds: List<String>.from(json['teamLeadIds']),
      memberIds: List<String>.from(json['memberIds']),
    );
  }
}
