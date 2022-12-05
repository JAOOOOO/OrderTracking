import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:order_tracking/data/order_details/order_details.dart';

///@author Jalal Addin Okbi

//this should be an implementation of an abstraction
class FirebaseOrderDetailsRepo {
  final _db = FirebaseFirestore.instance;
  Stream<OrderDetails> streamOrderDetails({required String orderId}) {
    final ref = _db.collection('orders').doc(orderId);
    return ref
        .snapshots()
        .map((snapshot) => OrderDetails.fromJson(snapshot.data()!));
  }
}
