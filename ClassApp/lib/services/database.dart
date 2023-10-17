import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:try1/models/student.dart';
import 'package:try1/models/user.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({required this.uid});

  // collection reference
  final CollectionReference studentcollection = FirebaseFirestore.instance.collection('students');

  Future updateUserData(String name , String subject , int val) async {
    return await studentcollection.doc(uid).set({
      'name': name,
      'subject': subject,
      'strength' : val
    });
  }

  // student list from snapshot

  List<Student> _stuListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Student(
          name: doc.data().toString().contains('name') ? doc.get('name') : '',
          subject: doc.data().toString().contains('subject') ? doc.get('subject') : '',
          strength: doc.data().toString().contains('strength') ? doc.get('strength') : ''
      );
    }).toList();
  }

  // user data from snapshot
  UserData _userDataFromSnapshot ( DocumentSnapshot snapshot){
    return UserData(
      uid:uid,
      name: snapshot.get('name'),
      subject: snapshot.get('subject'),
      strength: snapshot.get('strength'),
    );
  }

  // get student's data stream

  Stream<List<Student>> get students {
    return studentcollection.snapshots().map(_stuListfromSnapshot);
  }

  // get user doc stream
   Stream<UserData> get userData {
    return studentcollection.doc(uid).snapshots().map(_userDataFromSnapshot);
   }
}

