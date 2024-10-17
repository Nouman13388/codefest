class Message {
  String id;
  String senderId; // User ID of the sender
  String workspaceId; // ID of the workspace
  String content;
  DateTime timestamp;

  Message({
    required this.id,
    required this.senderId,
    required this.workspaceId,
    required this.content,
    required this.timestamp,
  });

  // Method to convert Message to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'senderId': senderId,
      'workspaceId': workspaceId,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  // Method to create Message from JSON
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      senderId: json['senderId'],
      workspaceId: json['workspaceId'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
