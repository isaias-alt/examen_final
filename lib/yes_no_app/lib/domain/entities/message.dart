enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;
  final DateTime timestamp;
  // agregar un atributo para marcar si el mensaje se ha leido
  bool isRead;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
    DateTime? timestamp,
    this.isRead = false,
  }) : timestamp = timestamp ?? DateTime.now();
}
