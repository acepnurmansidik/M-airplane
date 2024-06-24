import 'package:airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  CollectionReference destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchPopularDestination() async {
    try {
      QuerySnapshot result = await destinationRef.get();

      List<DestinationModel> destinations = result.docs
          .map((e) =>
              DestinationModel.fromJson(e.id, e.data() as Map<String, dynamic>))
          .toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
