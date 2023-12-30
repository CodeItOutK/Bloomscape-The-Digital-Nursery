import 'package:bloomscape/models/nursery_model.dart';

abstract class BaseNurseryRepository{
  Stream<List<Nursery>>getNurseries();
}