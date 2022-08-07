import 'package:cloud_firestore/cloud_firestore.dart';

class MessageService {
  //Instanciamos fireStore
  final _fireStore = FirebaseFirestore.instance;

  void save({String? collectionName, Map<String, dynamic>? collectionValues}) {
    _fireStore.collection(collectionName!).add(collectionValues!);
  }

  Future<QuerySnapshot> getMessage() async {
    return await _fireStore.collection("message").get();
  }

  Stream<QuerySnapshot> getMessageStream() {
    return _fireStore.collection("message").snapshots();
  }
}
