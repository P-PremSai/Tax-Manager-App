import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference Salary =
      FirebaseFirestore.instance.collection('Salary');

  Future updateUserDataSalary(
      String Basic_DA, String HRA, String Bonus, String Other) async {
    return await Salary.doc(uid).set({
      'Basic+DA': Basic_DA,
      'HRA': HRA,
      'Bonus': Bonus,
      'Other': Other,
    });
  }
}
