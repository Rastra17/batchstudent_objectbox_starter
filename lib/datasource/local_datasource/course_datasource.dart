import 'package:batch_student_starter/helper/objectbox.dart';
import 'package:batch_student_starter/model/course.dart';
import 'package:batch_student_starter/state/objectbox_state.dart';

class CourseDataSource {
  ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  Future<int> addCourse(Course course) async {
    try {
      return objectBoxInstance2.addCourse(course);
    } catch (e) {
      return 0;
    }
  }

  Future<List<Course>> getAllCourse() async {
    try {
      return Future.value(objectBoxInstance2.getAllCourse());
    } catch (e) {
      throw Exception('Failed to get all the courses');
    }
  }
}
