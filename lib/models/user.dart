class Users {
  final String uid;

  Users({this.uid});
}

class UserData {
  final String uid;
  final String Basic_DA;
  final String HRA;
  final String Bonus;
  final String Other;
  final String total;

  UserData(
      {this.uid, this.Basic_DA, this.HRA, this.Bonus, this.Other, this.total});
}
