import 'package:bloomscape/models/nursery_model.dart';
import 'package:bloomscape/repositories/nursery/base_nursery_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NurseryRepository extends BaseNurseryRepository{
  final FirebaseFirestore _firebaseFirestore;

  NurseryRepository({FirebaseFirestore? firebaseFirestore}):_firebaseFirestore=firebaseFirestore??FirebaseFirestore.instance;
  @override
  Stream<List<Nursery>> getNurseries() {
    return _firebaseFirestore.collection("nurseries").snapshots().map((snapshot){
      return snapshot.docs.map((doc) => Nursery.fromSnapshot(doc)).toList();

    });
  }

}

/*
class NurseryRepository extends BaseNurseryRepository { ... }: Declares a class named NurseryRepository that extends BaseNurseryRepository,
indicating that it provides an implementation for the methods defined in the base repository.
Constructor:
final FirebaseFirestore _firebaseFirestore;: Declares a final field _firebaseFirestore of type FirebaseFirestore, which will be used to interact with Firestore.
NurseryRepository({FirebaseFirestore? firebaseFirestore}) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;:
Constructor that allows injecting an optional FirebaseFirestore instance. If not provided, it defaults to using the instance from FirebaseFirestore.instance.
Method Implementation:
@override Stream<List<Nursery>> getNurseries() { ... }: Implements the getNurseries method declared in the BaseNurseryRepository interface.
It returns a stream of lists of Nursery objects.
_firebaseFirestore.collection("nurseries").snapshots().map(...): Retrieves a stream of snapshots from the Firestore collection named "nurseries" and
maps each snapshot to a list of Nursery objects using the Nursery.fromSnapshot method.
toList(): Converts the mapped stream into a list of Nursery objects.
Overall, this class serves as a repository for handling nursery-related data retrieval from Firestore. It leverages the Firestore library to work with a
Firestore database and maps the retrieved data to instances of the Nursery model class.
 */