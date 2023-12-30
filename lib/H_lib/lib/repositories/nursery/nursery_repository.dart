import 'package:cloud_firestore/cloud_firestore.dart';
import '/repositories/repositories.dart';
import '/models/models.dart';

class NurseryRepository extends BaseNurseryRepository {
  final FirebaseFirestore _firebaseFirestore;

  NurseryRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Nursery>> getNurseries() {
    return _firebaseFirestore
        .collection('nurseries')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Nursery.fromSnapshot(doc)).toList();
    });
  }
}

// import '/repositories/repositories.dart';
// import '/models/models.dart';
//
// class NurseryRepository extends BaseNurseryRepository {
//   final FirebaseFirestore _firebaseFirestore;
//
//   NurseryRepository({FirebaseFirestore? firebaseFirestore})
//       : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;
//
//   @override
//   Stream<List<Nursery>> getNurseries() {
//     return _firebaseFirestore
//         .collection('nurseries')
//         .snapshots()
//         .map((snapshot) {
//       return snapshot.docs.map((doc) => Nursery.fromSnapshot(doc)).toList();
//     });
//   }
// }