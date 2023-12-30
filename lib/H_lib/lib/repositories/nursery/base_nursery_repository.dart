import '/models/models.dart';

abstract class BaseNurseryRepository {
  Stream<List<Nursery>> getNurseries();

}