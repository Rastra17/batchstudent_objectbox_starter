import 'package:path_provider/path_provider.dart';

import '../model/batch.dart';
import '../model/course.dart';
import '../model/student.dart';
import '../objectbox.g.dart';

class ObjectBoxInstance {
  late final Store _store;
  late final Box<Batch> _batch;
  late final Box<Student> _student;
  late final Box<Course> _course;

  ObjectBoxInstance(this._store) {
    _batch = Box<Batch>(_store);
    _student = Box<Student>(_store);
    _course = Box<Course>(_store);
    insertBatches();
    insertCourses();
  }

  static Future<ObjectBoxInstance> init() async {
    var dir = await getApplicationDocumentsDirectory();
    final store =
        Store(getObjectBoxModel(), directory: '${dir.path}/student_course');
    return ObjectBoxInstance(store);
  }

  int addBatch(Batch batch) {
    return _batch.put(batch);
  }

  List<Batch> getAllBatch() {
    return _batch.getAll();
  }

  List<Course> getAllCourse() {
    return _course.getAll();
  }

  int addCourse(Course course) {
    return _course.put(course);
  }

  int addStudent(Student student) {
    return _student.put(student);
  }

  List<Student> getAllStudent() {
    return _student.getAll();
  }

  void insertBatches() {
    List<Batch> lstBatches = getAllBatch();
    if (lstBatches.isEmpty) {
      addBatch(Batch('29-a'));
      addBatch(Batch('29-b'));
      addBatch(Batch('28-a'));
      addBatch(Batch('28-b'));
    }
  }

  void insertCourses() {
    List<Course> lstCourses = getAllCourse();
    if (lstCourses.isEmpty) {
      addCourse(Course('Flutter'));
      addCourse(Course('Web API'));
      addCourse(Course('Design Thinking'));
      addCourse(Course('AI'));
    }
  }
}
