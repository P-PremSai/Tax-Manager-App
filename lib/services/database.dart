import 'package:TAX_MANAGER/models/salarys.dart';
import 'package:TAX_MANAGER/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference Salary =
      FirebaseFirestore.instance.collection('Salary');

  final CollectionReference Business =
      FirebaseFirestore.instance.collection('Business');

  final CollectionReference CapitalGains =
      FirebaseFirestore.instance.collection('CapitalGains');

  final CollectionReference Others =
      FirebaseFirestore.instance.collection('Others');

  final CollectionReference Exemptions =
      FirebaseFirestore.instance.collection('Exemptions');

  Future<void> updateUserDataSalary(String Basic_DA, String HRA, String Bonus,
      String Other, String total) async {
    return await Salary.doc(uid).set({
      'Basic+DA': Basic_DA,
      'HRA': HRA,
      'Bonus': Bonus,
      'Other': Other,
      'total': total,
    });
  }

  Future<void> updateUserDataBusiness(
      String Businesss, String Profession) async {
    return await Business.doc(uid).set({
      'Business': Businesss,
      'Profession': Profession,
    });
  }

  Future<void> updateUserDataCapitalGains(
      String ST_Normal, String ST_15, String LT_10, String LT_20) async {
    return await CapitalGains.doc(uid).set({
      'ST_Normal': ST_Normal,
      'ST@15': ST_15,
      'LT@10': LT_10,
      'LT@20': LT_20,
    });
  }

  Future<void> updateUserDataOthers(
      String ISBA, String IFD, String others) async {
    return await Others.doc(uid).set({
      'Savings Bank': ISBA,
      'Fixed Deposits': IFD,
      'Others': others,
    });
  }

  Future<void> updateUserDataExemptions(
      String SD,
      String C80,
      String CG80,
      String PT,
      String D80,
      String DD80,
      String DDB80,
      String B24,
      String CCD1B,
      String CCD2,
      String EEA,
      String FOOD,
      String U80,
      String EEB,
      String E80,
      String G8050,
      String G80100,
      String GGA,
      String GGC,
      String other,
      String HRA,
      String TTA80,
      String TTB80) async {
    return await Exemptions.doc(uid).set({
      'Standard Deduction': SD,
      '80C': C80,
      '80CG': CG80,
      'Professional Tax': PT,
      '80D': D80,
      '80DD': DD80,
      '80DDB': DDB80,
      'Section 24(B)': B24,
      '80CCD(1B)': CCD1B,
      '80CCD(2)': CCD2,
      '80EEA': EEA,
      'Food Coupons': FOOD,
      '80U': U80,
      '80EEB': EEB,
      '80E': E80,
      '80G-Eligible Deduction 50%': G8050,
      '80G-Eligible Deduction 100%': G80100,
      '80GGA': GGA,
      '80GGC': GGC,
      'Other Exemptions': other,
      'Eligible HRA Exemptions': HRA,
      '80 TTA': TTA80,
      '80 TTB': TTB80,
    });
  }

  List<salarys> _salaryListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return salarys(
        Basic_DA: doc.data()['Basic+DA'] ?? '',
        HRA: doc.data()['HRA'] ?? '',
        Bonus: doc.data()['Bonus'] ?? '',
        Other: doc.data()['Other'] ?? '',
        total: doc.data()['total'] ?? '',
      );
    }).toList();
  }

  //userData from snapshots
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      Basic_DA: snapshot.get('Basic+DA'),
      HRA: snapshot.get('HRA'),
      Bonus: snapshot.get('Bonus'),
      Other: snapshot.get('Other'),
      total: snapshot.get('total'),
    );
  }

  // Stream<QuerySnapshot> get SalaryAndIncome {
  //   return Salary.snapshots();
  // }

  Stream<List<salarys>> get salarystream {
    return Salary.snapshots().map(_salaryListFromSnapshot);
  }

  //get user data
  Stream<UserData> get userData {
    return Salary.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
