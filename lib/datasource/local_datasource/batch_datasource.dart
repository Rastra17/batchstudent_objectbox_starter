import 'package:batch_student_starter/helper/objectbox.dart';
import 'package:batch_student_starter/state/objectbox_state.dart';

import '../../model/batch.dart';

class BatchDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  ObjectBoxInstance objectBoxInstance2 = ObjectBoxState.objectBoxInstance!;

  Future<int> addBatch(Batch batch) async {
    try {
      return objectBoxInstance.addBatch(batch);
    } catch (e) {
      return Future.value(0);
    }
  }

  Future<List<Batch>> getBatches() {
    try {
      return Future.value(objectBoxInstance.getAllBatch());
    } catch (e) {
      throw Exception('Error in getting all batches');
    }
  }
}
