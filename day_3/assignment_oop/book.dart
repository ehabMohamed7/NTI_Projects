class Book {
  String _title;
  String _author;
  int yeaar;
  int _availableCopies;

  Book(this._title, this._author, this.yeaar, this._availableCopies);

  Book.NamedConstructor({required String title, required String author})
    : _title = title,
      _author = author,
      yeaar = 0,
      _availableCopies = 1;

  String get getTitle => _title;

  String get getAuthor => _author;

  int get getYear => yeaar;

  int get getAvailableCopies => _availableCopies;

  set setTitle(String title) {
    if (title.isEmpty) {
      print('is empty.');
      return;
    }
    _title = title;
  }

  set setAuthor(String value) {
    if (value.isEmpty) {
      print('Author is empty.');
      return;
    }
    _author = value;
  }

  set setYear(int value) {
    if (value < 0) {
      print('Year cannot be negative.');
      return;
    }
    yeaar = value;
  }

  set setAvailableCopies(int value) {
    if (value < 0) {
      print('Available copies cannot be negative.');
      return;
    }
    _availableCopies = value;
  }

  void increaseCopies() {
    _availableCopies++;
  }

  bool decreaseCopies() {
    if (_availableCopies <= 0) {
      return false;
    }
    _availableCopies--;

    return true;
  }
}
