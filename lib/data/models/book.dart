class Book {
  final String title;
  final String author;

  Book({
    required this.title,
    required this.author,
  });

  factory Book.fromMap(Map<String, String> map) {
    return Book(
      title: map['title'] ?? '',
      author: map['author'] ?? '',
    );
  }

  Map<String, String> toMap() {
    return {
      'title': title,
      'author': author,
    };
  }

  @override
  String toString() => '$title by $author';
}