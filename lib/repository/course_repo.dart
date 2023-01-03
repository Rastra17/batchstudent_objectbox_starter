import 'package:batch_student_starter/datasource/local_datasource/course_datasource.dart';

import '../model/course.dart';

abstract class CourseRepository {
  Future<List<Course>> getAllCourse();
  Future<int> addCourse(Course course);
}

class CourseRepositoryImpl extends CourseRepository {
  @override
  Future<int> addCourse(Course course) {
    return CourseDataSource().addCourse(course);
  }

  @override
  Future<List<Course>> getAllCourse() {
    return CourseDataSource().getAllCourse();
  }
}
