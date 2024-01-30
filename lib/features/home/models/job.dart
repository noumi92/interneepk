import 'package:cloud_firestore/cloud_firestore.dart';

class Job{
  String? id, title, imageUrl, loc, duration;

  Job({this.id, this.title, this.imageUrl, this.loc, this.duration});

  factory Job.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot
      ){
    final data = snapshot.data();
    return Job(
        id: data?['id'],
        title: data?['title'],
        imageUrl:  data?['imageUrl'],
        loc: data?['loc'],
        duration: data?['duration']
    );
  }

  Map<String, dynamic> toFirestore(){
    return{
      if (id != null) "id": id,
      if (title != null) "title": title,
      if (imageUrl != null) "imageUrl" : imageUrl,
      if (loc != null) "loc" : loc,
      if (duration != null) "duration" : duration
    };
  }

  Job.fromData(this.id, this.title, this.imageUrl, this.loc, this.duration);

  Job.fromJson(dynamic json){
    id = json["id"];
    title = json["title"];
    imageUrl = json["imageUrl"];
    loc = json["loc"];
    duration = json["duration"];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['imageUrl'] = imageUrl;
    map['loc'] = loc;
    map['duration'] = duration;
    return map;
  }
}