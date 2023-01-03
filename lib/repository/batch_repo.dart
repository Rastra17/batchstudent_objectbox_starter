import 'package:batch_student_starter/datasource/local_datasource/batch_datasource.dart';

import '../model/batch.dart';

abstract class BatchRepository {
  Future<List<Batch>> getBatches();
  Future<int> addBatch(Batch batch);
}

class BatchRepositoryImpl extends BatchRepository {
  @override
  Future<int> addBatch(Batch batch) {
    return BatchDataSource().addBatch(batch);
  }

  @override
  Future<List<Batch>> getBatches() {
    return BatchDataSource().getBatches();
  }
}
