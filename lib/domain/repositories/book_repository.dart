import '../../data/models/book.dart';
import '../../core/constants.dart';

class BookRepository {
  List<Book> _books = [];

  BookRepository() {
    _books = AppConstants.initialBooks
        .map((bookMap) => Book.fromMap(bookMap))
        .toList();
  }

  List<Book> getBooks() {
    return List.unmodifiable(_books);
  }

  void addBook(Book book) {
    _books.add(book);
  }

  void addHardcodedBook() {
    final newBook = Book.fromMap(AppConstants.newBook);
    _books.add(newBook);
  }

  int get bookCount => _books.length;
}