class Student {
  double _marks = 100;

  set setAddMarks(double score) {
    if (score < 0 && score > 100) {
      print('cant assign negative value');
    } else {
      _marks += score;
    }
  }

  set setRemoveMarks(double score) {
    if (score < 0 || score > _marks) {
      print('Invalid marks to remove');
    } else {
      _marks -= score;
    }
  }

  get getCurrentMarks => _marks;
}
