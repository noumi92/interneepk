import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:interneepk/features/home/models/job.dart';

class FirebaseDataHAndler {
  final db = FirebaseFirestore.instance;

  Future<List<Job>> getCources() async {
    List<Job> jobsList = [];
    await db.collection("jobs").get().then((value) {
      for (var doc in value.docs) {
        Job job = Job.fromFirestore(doc);
        jobsList.add(job);
      }
    });
    return jobsList;
  }
}