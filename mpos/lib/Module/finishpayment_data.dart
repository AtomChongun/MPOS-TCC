class FinishpaymentData {
  //Promotion? promotion;
  Member? member;
  late int change;

  FinishpaymentData({required this.member, required this.change});
}

//class Promotion {

class Member {
  late String username;
  late int poin;

  Member({
    required this.username,
    required this.poin,
  });
}
