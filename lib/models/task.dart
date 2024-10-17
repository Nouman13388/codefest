class Task {
  String id;
  String title;
  String description;
  String assignedTo; // User ID of the assigned team member
  String status; // 'Pending', 'In Progress', 'Completed'
  DateTime dueDate;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.assignedTo,
    required this.status,
    required this.dueDate,
  });

  // Method to convert Task to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'assignedTo': assignedTo,
      'status': status,
      'dueDate': dueDate.toIso8601String(),
    };
  }

  // Method to create Task from JSON
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      assignedTo: json['assignedTo'],
      status: json['status'],
      dueDate: DateTime.parse(json['dueDate']),
    );
  }
}
